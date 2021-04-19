library(tidyverse)
library(readxl)

LABCORP_MAP <- list()

LABCORP_MAP[[1]] <-
   "~/GitHub/meerapatelmd/setupLOINC/data-raw/Labcorp Test Compendium with LOINC 3.23.21.xlsx" %>%
     readxl::excel_sheets() %>%
     purrr::set_names() %>%
     purrr::map(
         readxl::read_excel,
         path = "~/GitHub/meerapatelmd/setupLOINC/data-raw/Labcorp Test Compendium with LOINC 3.23.21.xlsx",
         skip = 4,
         col_types = "text"
       ) %>%
     pluck(1)


LABCORP_MAP[[2]] <-
 "~/GitHub/meerapatelmd/setupLOINC/data-raw/LOINC-codes_arup.xlsx" %>%
     readxl::excel_sheets() %>%
     purrr::set_names() %>%
     purrr::map(
         readxl::read_excel,
         path = "~/GitHub/meerapatelmd/setupLOINC/data-raw/LOINC-codes_arup.xlsx",
         skip = 11,
         col_types = "text"
       ) %>%
     pluck(1) %>%
     select_if(~any(!is.na(.)))


names(LABCORP_MAP) <- c("Labcorp Test Compendium with LOINC 3.23.21",
                        "LOINC-codes_arup")


usethis::use_data(LABCORP_MAP,
                  overwrite=TRUE)
