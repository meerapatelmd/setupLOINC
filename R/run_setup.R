#' @title
#' Load LOINC Complete Package
#'
#' @description
#' The CSV files unpacked from "LOINC and Relma Complete Download"
#' (\url{https://loinc.org/downloads/}) zip are loaded into Postgres.The
#' file version and release dates are taken along with the table names and row
#' counts are logged to a separate table after the loading is completed.
#' @param conn Connection to a Postgres database.
#' @param conn_fun Connection expression.
#' @param schema Target schema for the LOINC load, Default: 'loinc'
#' @param path_to_csvs Path to the unpacked LOINC download.
#' @param include_linguistic_variants Include `LinguisticVariant` tables?
#' @param log_schema Schema for the table that logs the process, Default: 'public'
#' @param log_table_name Name of log table, Default: 'setup_loinc_log'
#' @param log_csv_version (Required) Version number povided in the download page and source zip file name.
#' @param log_release_date (Required) Release date provided in the download page.
#' @rdname run_setup
#' @export
#' @importFrom glue glue
#' @importFrom pg13 send ls_tables query render_row_count table_exists read_table drop_table write_table
#' @importFrom purrr map set_names
#' @importFrom dplyr bind_rows rename mutate select everything
#' @importFrom tidyr pivot_wider
#' @importFrom cli cat_line cat_boxx
#' @importFrom tibble as_tibble

run_setup <-
  function(conn,
           conn_fun = "pg13::local_connect()",
           schema = "loinc",
           path_to_csvs,
           include_linguistic_variants = FALSE,
           verbose = TRUE,
           render_sql = TRUE,
           render_only = FALSE,
           log_schema = "public",
           log_table_name = "setup_loinc_log",
           log_csv_version,
           log_release_date) {

    if (missing(log_csv_version)|missing(log_release_date)) {
      stop("`log_csv_version` and `log_release_date` are required.")
    }

    if (missing(conn)) {

      conn <- eval(rlang::parse_expr(conn_fun))

      on.exit(pg13::dc(conn = conn, verbose = verbose), add = TRUE,
              after = TRUE)
    }

    path_to_csvs <-
      path.expand(path_to_csvs)

    sql_statement <-
      glue::glue(paste(readLines(con = system.file(package = "setupLOINC",
                                             "sql",
                                             "load.sql")), collapse = "\n"))

    pg13::send(conn = conn,
               sql_statement = sql_statement,
               verbose = verbose,
               render_sql = render_sql,
               render_only = render_only)

    if (include_linguistic_variants) {

      sql_statement <-
        glue::glue(paste(readLines(con = system.file(package = "setupLOINC",
                                                     "sql",
                                                     "linguisticvariants.sql")), collapse = "\n"))
      pg13::send(conn = conn,
                 sql_statement = sql_statement,
                 verbose = verbose,
                 render_sql = render_sql,
                 render_only = render_only)

    }

    #Log
        table_names <-
          pg13::ls_tables(conn = conn,
                          schema = schema,
                          verbose = verbose,
                          render_sql = render_sql)

        current_row_count <-
          table_names %>%
          purrr::map(function(x) pg13::query(conn = conn,
                                             sql_statement = pg13::render_row_count(schema = schema,
                                                                                  tableName = x))) %>%
          purrr::set_names(tolower(table_names)) %>%
          dplyr::bind_rows(.id = "Table") %>%
          dplyr::rename(Rows = count) %>%
          tidyr::pivot_wider(names_from = "Table",
                             values_from = "Rows") %>%
          dplyr::mutate(sl_datetime = Sys.time(),
                        sl_version = log_csv_version,
                        sl_release_date = log_release_date,
                        sl_schema = schema) %>%
          dplyr::select(sl_datetime,
                        sl_version,
                        sl_release_date,
                        sl_schema,
                        dplyr::everything())



        if (pg13::table_exists(conn = conn,
                                schema = log_schema,
                                table_name = log_table_name)) {

                updated_log <-
                  dplyr::bind_rows(
                        pg13::read_table(conn = conn,
                                         schema = log_schema,
                                         table = log_table_name,
                                         verbose = verbose,
                                         render_sql = render_sql,
                                         render_only = render_only),
                        current_row_count)  %>%
                  dplyr::select(sl_datetime,
                                sl_version,
                                sl_release_date,
                                sl_schema,
                                dplyr::everything())

        } else {
          updated_log <- current_row_count
        }

        pg13::drop_table(conn = conn,
                         schema = log_schema,
                         table = log_table_name,
                         verbose = verbose,
                         render_sql = render_sql,
                         render_only = render_only)

        pg13::write_table(conn = conn,
                          schema = log_schema,
                          table_name = log_table_name,
                          data = updated_log,
                          verbose = verbose,
                          render_sql = render_sql,
                          render_only = render_only)

        cli::cat_line()
        cli::cat_boxx("Log Results",
                      float = "center")
        print(tibble::as_tibble(updated_log))
        cli::cat_line()



      }
