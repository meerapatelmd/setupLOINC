#' @title
#' Load LOINC Table File (CSV) into Postgres
#' @description
#' The CSV files unpacked from a LOINC Table File (CSV) download from
#' \url{https://loinc.org/downloads/loinc-table/} are loaded into Postgres.The
#' file version and release dates are taken along with the table names and row
#' counts are logged to a separate table after the loading is completed.
#' @param conn Connection to a Postgres database.
#' @param schema Target schema for the LOINC load, Default: 'loinc'
#' @param csv_path Path to the unpacked LOINC Table File csv files.
#' @param log_schema Schema for the table that logs the process, Default: 'public'
#' @param log_table_name Name of log table, Default: 'setup_loinc_log'
#' @param log_csv_version (Required) \href{https://loinc.org/downloads/loinc-table/}{LOINC Table File (CSV)} Version.
#' @param log_release_date (Required) \href{https://loinc.org/downloads/loinc-table/}{LOINC Table File (CSV)} Release Date.
#' @seealso
#'  \code{\link[pg13]{schema_exists}},\code{\link[pg13]{drop_cascade}},\code{\link[pg13]{send}},\code{\link[pg13]{ls_tables}},\code{\link[pg13]{c("query", "query")}},\code{\link[pg13]{render_row_count}},\code{\link[pg13]{table_exists}},\code{\link[pg13]{read_table}},\code{\link[pg13]{drop_table}},\code{\link[pg13]{write_table}}
#'  \code{\link[SqlRender]{render}}
#'  \code{\link[purrr]{map}},\code{\link[purrr]{set_names}}
#'  \code{\link[dplyr]{bind}},\code{\link[dplyr]{rename}},\code{\link[dplyr]{mutate}},\code{\link[dplyr]{select}},\code{\link[dplyr]{reexports}}
#'  \code{\link[tidyr]{pivot_wider}}
#'  \code{\link[cli]{cat_line}}
#'  \code{\link[tibble]{as_tibble}}
#' @rdname run_setup
#' @export
#' @importFrom pg13 schema_exists drop_cascade send ls_tables query render_row_count table_exists read_table drop_table write_table
#' @importFrom SqlRender render
#' @importFrom purrr map set_names
#' @importFrom dplyr bind_rows rename mutate select everything
#' @importFrom tidyr pivot_wider
#' @importFrom cli cat_line cat_boxx
#' @importFrom tibble as_tibble




run_setup <-
  function(conn,
           schema = "loinc",
           csv_path,
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

    csv_path <- path.expand(csv_path)

    if (pg13::schema_exists(conn = conn,
                        schema = schema)) {
      pg13::drop_cascade(conn = conn,
                         schema = schema,
                         verbose = verbose,
                         render_sql = render_sql,
                         render_only = render_only)
    }

    sql_statement <-
    SqlRender::render(
      sql = "
            CREATE SCHEMA @schema;
            SET search_path TO @schema;
            DROP TABLE IF EXISTS SourceOrganization;
            CREATE TABLE SourceOrganization (
              id  integer,
              copyright_id varchar(255) not null,
              name varchar(255),
              copyright text,
              terms_of_use text,
              url text,
              primary key (copyright_id)
            );

            DROP TABLE IF EXISTS Loinc;
            CREATE TABLE Loinc (
              loinc_num varchar(10) not null,
              component varchar(255),
              property varchar(255),
              time_aspct varchar(255),
              system varchar(255),
              scale_typ varchar(255),
              method_typ varchar(255),
              class varchar(255),
              VersionLastChanged varchar(255),
              chng_type varchar(255),
              DefinitionDescription text,
              status varchar(255),
              consumer_name varchar(255),
              classtype integer,
              formula text,
              exmpl_answers text,
              survey_quest_text text,
              survey_quest_src varchar(50),
              unitsrequired varchar(1),
              submitted_units varchar(30),
              relatednames2 text,
              shortname varchar(255),
              order_obs varchar(15),
              cdisc_common_tests varchar(1),
              hl7_field_subfield_id varchar(50),
              external_copyright_notice text,
              example_units varchar(255),
              long_common_name varchar(255),
              UnitsAndRange text,
              example_ucum_units varchar(255),
              example_si_ucum_units varchar(255),
              status_reason varchar(9),
              status_text text,
              change_reason_public text,
              common_test_rank integer,
              common_order_rank integer,
              common_si_test_rank integer,
              hl7_attachment_structure varchar(15),
              ExternalCopyrightLink varchar(255),
              PanelType varchar(50),
              AskAtOrderEntry varchar(255),
              AssociatedObservations varchar(255),
              VersionFirstReleased varchar(255),
              ValidHL7AttachmentRequest varchar(50),
              DisplayName varchar(255),

              primary key (loinc_num)

            );

            DROP TABLE IF EXISTS MapTo;
            CREATE TABLE MapTo (
              loinc varchar(10) NOT NULL,
              map_to varchar(10) NOT NULL,
              comment text,
              primary key (loinc, map_to)

            );

            COPY Loinc (loinc_num, component, property, time_aspct, system, scale_typ, method_typ, class, VersionLastChanged, chng_type, DefinitionDescription, status, consumer_name, classtype, formula, exmpl_answers, survey_quest_text, survey_quest_src, unitsrequired, submitted_units, relatednames2, shortname, order_obs, cdisc_common_tests, hl7_field_subfield_id, external_copyright_notice, example_units, long_common_name, UnitsAndRange, example_ucum_units, example_si_ucum_units, status_reason, status_text, change_reason_public, common_test_rank, common_order_rank, common_si_test_rank, hl7_attachment_structure, ExternalCopyrightLink, PanelType, AskAtOrderEntry, AssociatedObservations, VersionFirstReleased, ValidHL7AttachmentRequest, DisplayName ) FROM '@csv_path/Loinc.csv' CSV HEADER;

            COPY MapTo (loinc, map_to, comment) FROM '@csv_path/MapTo.csv' CSV HEADER;

            COPY SourceOrganization (id, copyright_id, name, copyright, terms_of_use, url) FROM '@csv_path/SourceOrganization.csv' CSV HEADER;
            ",
      schema = schema,
      csv_path = csv_path
    )

    pg13::send(conn = conn,
               sql_statement = sql_statement,
               verbose = verbose,
               render_sql = render_sql,
               render_only = render_only)

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
