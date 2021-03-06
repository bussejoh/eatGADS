#' eatGADS: Data management of hierarchical SPSS files via R and SQLite
#'
#' The \code{eatGADS} package provides various groups of functions:
#' importing data (mainly \code{sav}-files), handling and modifying meta data on variable level, creating a fixed form \code{SQLite} data base and using the \code{SQLite} data base.
#'
#' @section Importing data:
#' SPSS data can be imported via \code{\link{import_spss}}, \code{R} \code{data.frames} via \code{\link{import_DF}}.
#'
#' @section Creating the GADS:
#' Hierarchical data sets are combined via \code{\link{mergeLabels}} and the data base is created via \code{\link{createGADS}}. For this, the package \code{eatDB} is utilized. See also \code{\link[eatDB]{createDB}}.
#'
#' @section Using the GADS:
#' The content of a data base can be obtained via \code{\link{namesGADS}}. Data is extracted from the data base via \code{\link{getGADS}} for a single GADS and via \code{\link{getTrendGADS}} for trend analysis. The resulting object is a \code{GADSdat} object. Meta data can be extracted via \code{\link{extractMeta}}, either from the \code{GADSdat} object or directly from the data base. Data can be extracted from the \code{GADSdat} object via \code{\link{extractData}}.
#'
#' @docType package
#' @name eatGADS
NULL

## quiets concerns of R CMD check regarding NSE by data.table
utils::globalVariables(c("i.value_new"))
