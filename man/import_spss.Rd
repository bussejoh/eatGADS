% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_spss.R
\name{import_spss}
\alias{import_spss}
\title{Import SPSS data}
\usage{
import_spss(filePath, checkVarNames = TRUE, labeledStrings = FALSE)
}
\arguments{
\item{filePath}{Source file location, ending on \code{.sav}.}

\item{checkVarNames}{Should variable names be checked for violations of \code{SQLite} and \code{R} naming rules?}

\item{labeledStrings}{Should strings as labeled values be allowed? This possibly corrupts all labeled values.}
}
\value{
Returns a list with the actual data \code{dat} and a data frame with all meta information in long format \code{labels}.
}
\description{
Function to import \code{.sav} files while extracting meta information, e.g. variable and value labels.
}
\details{
SPSS files (\code{.sav}) store variable and value labels and assign specific formatting to variables. \code{import_spss} imports
data from SPSS, while storing this meta-information separately in a long format data frame. Value labels and missing labels are used
to identify missing values (see \code{\link{checkMissings}}). Time and date variables are converted to character.
}
\examples{
\dontrun{
dat <- import_spss("t:/_R_Tutorials/R_Workshops/01_Allgemeine Einfuehrung/
                  IQB-LV-2011_SchuelerInnen-Eltern_CF.sav",
                  checkVarNames = FALSE)

# Inspect Meta data
extractMeta(dat)

# Extract Data
dat <- extractData(dat, convertLabels = "character")
}

}
