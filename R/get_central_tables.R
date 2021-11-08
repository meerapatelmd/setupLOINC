#' @title
#' Get Names of Central Tables
#' @description
#' Get names of the non-linguistic variant
#' tables to be able to remove erroneous tables
#' when desired.
#' @return
#' Character vector
#' @rdname get_central_tables
#' @export

get_central_tables <-
  function() {

  c(
    'ANSWERLIST',
    'CONSUMERNAME',
    'DOCUMENTONTOLOGY',
    'IMAGINGDOCUMENTCODES',
    'LINGUISTICVARIANTS',
    'LOINC',
    'LOINCANSWERLISTLINK',
    'LOINCCHANGESNAPSHOT',
    'LOINCGROUP',
    'LOINCGROUPATTRIBUTES',
    'LOINCGROUPLOINCTERMS',
    'LOINCIEEEMEDICALDEVICECODEMAPPINGTABLE',
    'LOINCPARENTGROUP',
    'LOINCPARENTGROUPATTRIBUTES',
    'LOINCPARTLINK_PRIMARY',
    'LOINCPARTLINK_SUPPLEMENTARY',
    'LOINCRSNARADIOLOGYPLAYBOOK',
    'LOINCTABLECORE',
    'LOINCUNIVERSALLABORDERSVALUESET',
    'MAPTO',
    'MULTIAXIALHIERARCHY',
    'PANELSANDFORMS',
    'PART',
    'PARTCHANGESNAPSHOT',
    'PARTRELATEDCODEMAPPING',
    'SOURCEORGANIZATION',
    'UPDATES'
  )

  }
