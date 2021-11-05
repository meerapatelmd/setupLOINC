library(tidyverse)
loinc_zips <- list.files("~/Desktop",
           pattern = "Loinc.*zip$",
           full.names = TRUE)

lookup <-
  tribble(~source_zip, ~csv_file, ~table_name, ~md5sum)


pg13::drop_cascade(conn_fun = "pg13::local_connect()",
                   schema = "loinc_sandbox")

pg13::create_schema(conn_fun = "pg13::local_connect()",
                    schema = "loinc_sandbox")

for (loinc_zip in loinc_zips) {

  exdir <-
    file.path("~/Desktop", xfun::sans_ext(basename(loinc_zip)))
  unzip(loinc_zip,
        exdir = exdir)
  unzipped_csv_files <-
  list.files(exdir,
             full.names = TRUE,
             pattern = "csv$")


  for (unzipped_csv_file in unzipped_csv_files) {

    csv_table_name <- basename(xfun::sans_ext(unzipped_csv_file))

    csv_data <-
      broca::simply_read_csv(file = unzipped_csv_file,
                             n_max = 10000)

    conn <- pg13::local_connect()
    pg13::drop_table(conn = conn,
                     schema = "loinc_sandbox",
                     table = csv_table_name)
    pg13::write_table(conn = conn,
                      checks = "rows",
                      schema = "loinc_sandbox",
                      table_name = csv_table_name,
                      data = csv_data)
    pg13::dc(conn = conn)


    lookup <-
      bind_rows(lookup,
    tribble(~source_zip, ~csv_file, ~table_name, ~md5sum,
            loinc_zip, unzipped_csv_file, csv_table_name, tools::md5sum(unzipped_csv_file)))

  }

}
