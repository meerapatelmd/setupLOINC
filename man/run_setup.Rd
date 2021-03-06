% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_setup.R
\name{run_setup}
\alias{run_setup}
\title{Load LOINC Table File (CSV) into Postgres}
\usage{
run_setup(
  conn,
  schema = "loinc",
  csv_path,
  verbose = TRUE,
  render_sql = TRUE,
  render_only = FALSE,
  log_schema = "public",
  log_table_name = "setup_loinc_log",
  log_csv_version,
  log_release_date
)
}
\arguments{
\item{conn}{Connection to a Postgres database.}

\item{schema}{Target schema for the LOINC load, Default: 'loinc'}

\item{csv_path}{Path to the unpacked LOINC Table File csv files.}

\item{log_schema}{Schema for the table that logs the process, Default: 'public'}

\item{log_table_name}{Name of log table, Default: 'setup_loinc_log'}

\item{log_csv_version}{(Required) \href{https://loinc.org/downloads/loinc-table/}{LOINC Table File (CSV)} Version.}

\item{log_release_date}{(Required) \href{https://loinc.org/downloads/loinc-table/}{LOINC Table File (CSV)} Release Date.}
}
\description{
The CSV files unpacked from a LOINC Table File (CSV) download from
\url{https://loinc.org/downloads/loinc-table/} are loaded into Postgres.The
file version and release dates are taken along with the table names and row
counts are logged to a separate table after the loading is completed.
}
\seealso{
\code{\link[pg13]{schema_exists}},\code{\link[pg13]{drop_cascade}},\code{\link[pg13]{send}},\code{\link[pg13]{ls_tables}},\code{\link[pg13]{c("query", "query")}},\code{\link[pg13]{render_row_count}},\code{\link[pg13]{table_exists}},\code{\link[pg13]{read_table}},\code{\link[pg13]{drop_table}},\code{\link[pg13]{write_table}}
\code{\link[SqlRender]{render}}
\code{\link[purrr]{map}},\code{\link[purrr]{set_names}}
\code{\link[dplyr]{bind}},\code{\link[dplyr]{rename}},\code{\link[dplyr]{mutate}},\code{\link[dplyr]{select}},\code{\link[dplyr]{reexports}}
\code{\link[tidyr]{pivot_wider}}
\code{\link[cli]{cat_line}}
\code{\link[tibble]{as_tibble}}
}
