% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/collapseMultiMC_Text.R
\name{collapseMultiMC_Text}
\alias{collapseMultiMC_Text}
\title{Recode multiple choice variable with multiple variables.}
\usage{
collapseMultiMC_Text(
  GADSdat,
  mc_vars,
  text_vars,
  mc_var_4text,
  var_suffix = "_r",
  label_suffix = "(recoded)"
)
}
\arguments{
\item{GADSdat}{A \code{GADSdat} object.}

\item{mc_vars}{A character vector with the variable names of the multiple choice variable. Names of the character
vector are the corresponding values that are represented by the individual variables.
Creation by \code{\link{matchValues_varLabels}} is recommended.}

\item{text_vars}{A character vector with the names of the text variables which should be collapsed.}

\item{mc_var_4text}{The name of the multiple choice variable that signals that information from the text variable should be used. This variable is recoded according to the final status of the text variables.}

\item{var_suffix}{Variable suffix for the newly created \code{GADSdat}. If an empty character, the existing variables are overwritten.}

\item{label_suffix}{Suffix added to variable label for the newly created or modified variables in the \code{GADSdat}.}
}
\value{
Returns a \code{GADSdat} containing the newly computed variables.
}
\description{
Recode multiple variables (representing a single multiple choice item) based on multiple character variables
(representing a text field).
}
\details{
If a multiple choice item can be answered with ticking multiple boxes, multiple variables in the data
set are necessary to represent this item. In this case, an additional text field for further answers can also
contain multiple values at once. However, some of the answers in the text field might be redundant to
the dummy variables. \code{collapseMultiMC_Text} allows to recode multiple MC items of this
kind based on multiple text variables. The recoding can be prepared by expanding the single text variable
(\code{\link{createLookup}} and \code{\link{applyLookup_expandVar}}) and by matching the dummy variables
to its underlying values stored in variable labels (\code{\link{matchValues_varLabels}}).

The function recodes the dummy variables according to the character variables. Additionally, the \code{mc_var_4text}
variable is recoded according to the final status of the \code{text_vars}.

Missing values in the text variables can be represented either by \code{NAs} or by empty characters.
The multiple choice variables specified with \code{mc_vars} can only contain the values \code{0},
\code{1} and missing codes. The value \code{1} must always represent "this category applies".
If necessary, use \code{\link{recodeGADS}} for recoding.
}
\examples{
# Prepare example data
mt2 <- data.frame(ID = 1:4, mc1 = c(1, 0, 0, 0), mc2 = c(0, 0, 0, 0), mc3 = c(0, 1, 1, 0),
                  text1 = c(NA, "Eng", "Aus", "Aus2"), text2 = c(NA, "Franz", NA, "Ger"),
                  stringsAsFactors = FALSE)
mt2_gads <- import_DF(mt2)
mt3_gads <- changeVarLabels(mt2_gads, varName = c("mc1", "mc2", "mc3"),
                            varLabel = c("Lang: Eng", "Aus spoken", "other"))

## All operations (see also respective help pages of functions for further explanations)
mc_vars <- matchValues_varLabels(mt3_gads, mc_vars = c("mc1", "mc2", "mc3"),
            values = c("Aus", "Eng", "Eng"), label_by_hand = c("other" = "mc3"))

out_gads <- collapseMultiMC_Text(mt3_gads, mc_vars = mc_vars,
             text_vars = c("text1", "text2"), mc_var_4text = "mc3")

out_gads2 <- multiChar2fac(out_gads, vars = c("text1_r", "text2_r"))

final_gads <- remove_2NA_char(out_gads2, vars = c("text1_r_r", "text2_r_r"),
                              max_num = 1, na_value = -99)

}
