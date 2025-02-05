# Web of Science API Lite
#
# A responsive API that supports rich searching across the Web of Science Core Collection to retrieve core article metadata.  This service provides a great way to reuse Web of Science data both internally and externally to enhance  institutional repositories and research networking systems with best-in-class data. This API supports searching across the Web of Science to retrieve item-level metadata with limited fields:  - UT (Unique Identifier) - Authors - Author keywords - Document type - Title - Issue - Pages - Publication date - Source title - Volume - DOI - ISBN - ISSN   The API supports JSON and XML responses, and this documentation supports trying both response types. 
#
# The version of the OpenAPI document: 1.0
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title WosLiteRecordTitle
#'
#' @description WosLiteRecordTitle Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field Title  list( character ) [optional]
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
WosLiteRecordTitle <- R6::R6Class(
  'WosLiteRecordTitle',
  public = list(
    `Title` = NULL,
    initialize = function(
        `Title`=NULL, ...
    ) {
      local.optional.var <- list(...)
      if (!is.null(`Title`)) {
        stopifnot(is.vector(`Title`), length(`Title`) != 0)
        sapply(`Title`, function(x) stopifnot(is.character(x)))
        self$`Title` <- `Title`
      }
    },
    toJSON = function() {
      WosLiteRecordTitleObject <- list()
      if (!is.null(self$`Title`)) {
        WosLiteRecordTitleObject[['Title']] <-
          self$`Title`
      }

      WosLiteRecordTitleObject
    },
    fromJSON = function(WosLiteRecordTitleJson) {
      WosLiteRecordTitleObject <- jsonlite::fromJSON(WosLiteRecordTitleJson)
      if (!is.null(WosLiteRecordTitleObject$`Title`)) {
        self$`Title` <- ApiClient$new()$deserializeObj(WosLiteRecordTitleObject$`Title`, "array[character]", loadNamespace("woslite_r_client"))
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`Title`)) {
        sprintf(
        '"Title":
           [%s]
        ',
        paste(unlist(lapply(self$`Title`, function(x) paste0('"', x, '"'))), collapse=",")
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(WosLiteRecordTitleJson) {
      WosLiteRecordTitleObject <- jsonlite::fromJSON(WosLiteRecordTitleJson)
      self$`Title` <- ApiClient$new()$deserializeObj(WosLiteRecordTitleObject$`Title`, "array[character]", loadNamespace("woslite_r_client"))
      self
    }
  )
)

