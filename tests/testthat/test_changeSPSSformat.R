
# load(file = "tests/testthat/helper_data.rda")
load(file = "helper_data.rda")
# dfSAV <- import_spss(file = "tests/testthat/helper_spss_missings.sav")
dfSAV <- import_spss(file = "helper_spss_missings.sav")

test_that("SPSS format wrapper", {
  out <- changeSPSSformat(dfSAV, varName = "VAR1", format = "F10")
  expect_equal(out$labels[1, "format"], "F10")
  expect_error(changeSPSSformat(df1, varName = "ID1", format = "A20"), "Incompatible R variable type and format.spss for variable ID1")

  expect_error(changeSPSSformat(dfSAV, varName = "VAR1", format = "F1024"), "format has to have maximum 3 numbers (width) after its type.", fixed = TRUE)
  expect_error(changeSPSSformat(dfSAV, varName = "VAR1", format = "S10"), "format has to start with A (string) or F (numeric).", fixed = TRUE)
  expect_error(changeSPSSformat(dfSAV, varName = "VAR1", format = "110"), "format has to start with A (string) or F (numeric).", fixed = TRUE)
  expect_error(changeSPSSformat(dfSAV, varName = "VAR1", format = "FF0"), "format can only have numbers (width) after its type.", fixed = TRUE)
})

