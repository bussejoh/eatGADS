% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multiChar2fac.R
\name{multiChar2fac}
\alias{multiChar2fac}
\title{Transform Multiple character variables to factors with identical levels.}
\usage{
multiChar2fac(GADSdat, vars, var_suffix = "_r", label_suffix = "(recoded)")
}
\arguments{
\item{GADSdat}{A \code{data.frame} or \code{GADSdat} object.}

\item{vars}{A single variable name of the multiple choice variable.}

\item{var_suffix}{Variable suffix for the newly created \code{GADSdat}. If an empty character, the existing variables are overwritten.}

\item{label_suffix}{Suffix added to variable label for the newly created variable in the \code{GADSdat}.}
}
\value{
Returns a \code{GADSdat} containing the newly computed variable.
}
\description{
Convert multiple character variables to factors, while creating a common set of value labels, which is identical across variables.
}
\details{
If a set of variables has the same possible values, it is desirable that these variables share the same
value labels, even if some of the values do not occur on the individual variables. This function allows
the transformation of multiple character variables
to factors while assimilating the value labels.
The SPSS format of the newly created variables is set to \code{F10.0}.
}
\examples{
#to be done

}
