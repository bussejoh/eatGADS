% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applyChangeMeta.R
\name{applyChangeMeta}
\alias{applyChangeMeta}
\title{Apply Meta Data Changes.}
\usage{
applyChangeMeta(changeTable, GADSdat)
}
\arguments{
\item{changeTable}{Change table as provided by \code{\link{getChangeMeta}}.}

\item{GADSdat}{\code{GADSdat} object imported via \code{eatGADS}.}
}
\value{
Returns the modified \code{GADSdat} object.
}
\description{
Function to apply meta data changes to a \code{GADSdat} object specified by a change table extracted by \code{\link{getChangeMeta}}.
}
\details{
Values for which the change columns contain \code{NA} remain unchanged.
}
\examples{
# Example data set
#to be done

}
