library(tidyverse)
lookup <-
  tibble(
    loinc_csv_paths = list.files("~/Desktop/Loinc_2.71",
               pattern = "[.]csv$",
               full.names = TRUE,
               recursive = TRUE)) %>%
  mutate(loinc_csvs = basename(loinc_csv_paths)) %>%
  mutate(loinc_table = xfun::sans_ext(loinc_csvs)) %>%
  mutate(loinc_csv_md5sum = tools::md5sum(loinc_csv_paths)) %>%
  mutate(loinc_table = case_when(grepl("Group", loinc_table) ~ sprintf("Loinc%s", loinc_table),
                                TRUE ~ loinc_table))


# QA duplicate tablenames
qa <-
lookup %>%
  distinct(loinc_table, loinc_csv_md5sum) %>%
  count(loinc_table, loinc_csv_md5sum, sort = TRUE,
        name = "md5sum_count") %>%
  dplyr::filter(md5sum_count > 1)




pg13::drop_cascade(conn_fun = "pg13::local_connect()",
                   schema = "loinc_sandbox")

pg13::create_schema(conn_fun = "pg13::local_connect()",
                    schema = "loinc_sandbox")


for (i in 1:nrow(lookup)) {

  csv_file <- lookup$loinc_csv_paths[i]
  csv_table_name <- lookup$loinc_table[i]

  csv_data <-
    broca::simply_read_csv(file = csv_file,
                           n_max = 10000)

  colnames(csv_data) <-
  stringr::str_replace_all(colnames(csv_data),
                           pattern = "Group",
                           replacement = "LoincGroup")

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
}

lookup <-
  lookup %>%
  mutate(loinc_table = tolower(loinc_table)) %>%
  transmute(table_name = loinc_table,
            table_csv = loinc_csv_paths)


is <-
  pg13::query(sql_statement = "SELECT * FROM information_schema.columns WHERE table_schema = 'loinc_sandbox' ORDER BY table_name, ordinal_position;")

is <-
lookup %>%
  left_join(is) %>%
  distinct()

is2 <-
is %>%
  distinct(table_name,
           table_csv,
           column_name,
           data_type,
           character_maximum_length) %>%
  mutate(data_definition_b =
           case_when(character_maximum_length == 255 ~ "varchar(255)",
                     TRUE ~ "text")) %>%
  mutate(data_definition = sprintf("%s %s", column_name, data_definition_b)) %>%
  distinct(table_name,
           table_csv,
           data_definition)

is3_a <-
  split(is2,
        is$table_name) %>%
  map(distinct, table_csv) %>%
  map(unlist) %>%
  map(unname)

is3_b <-
   split(is2,
         is$table_name) %>%
  map(select, data_definition) %>%
  map(unlist) %>%
  map(unname) %>%
  map(paste, collapse = ",\n")


is3 <-
list(copy_from_file = is3_a,
     data_definitions = is3_b) %>%
  transpose()

tmpl <-
"
DROP TABLE IF EXISTS {table_name};
CREATE TABLE {table_name} (
{data_definitions}
);

COPY {table_name} FROM '{copy_from_file}' CSV HEADER;

"

output_file <- "test.sql"
cat(file = output_file)

for (i in seq_along(is3)) {

  table_name <- names(is3)[i]
  data_definitions <- is3[[i]]$data_definitions
  copy_from_file <- is3[[i]]$copy_from_file

  cat(
  glue::glue(tmpl),
  file = output_file,
  sep = "\n",
  append = TRUE)

}

file.edit(output_file)
