% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_spss2.R
\name{write_spss2}
\alias{write_spss2}
\title{Write a \code{GADSdat} object to \code{txt} and \code{SPSS} syntax}
\usage{
write_spss2(GADSdat, filePath, syntaxPath)
}
\arguments{
\item{GADSdat}{A \code{GADSdat} object.}

\item{filePath}{Path of \code{.txt} file to write.}

\item{syntaxPath}{Path of \code{.sps} file to write.}
}
\value{
Writes \code{sav} file to disc, returns \code{NULL}.
}
\description{
Write a \code{GADSdat} object to a text file (\code{txt}) and an accompanying \code{SPSS} syntax file containing all meta information (e.g. value and variable labels).
}
\details{
This function is based on \code{eatPreps} \code{\link[eatPrep]{writeSpss}} function. Currently under development.
}
\examples{
# tbd

}
