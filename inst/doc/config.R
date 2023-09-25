## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  eval = FALSE
)

## ----include = FALSE, eval = FALSE, echo = FALSE------------------------------
#  library(shinyExprPortal)

## ----list_modules, echo=FALSE-------------------------------------------------
#  shinyExprPortal::show_avaiable_modules()

## ----out.width = "800px"------------------------------------------------------
#  knitr::include_graphics("comparetraj.png")

## ----simple_models, eval = TRUE, echo = FALSE---------------------------------
knitr::kable(data.frame(
  Model = c("Linear", "Nonlinear"),
  File = c("Model_1.txt", "Model_2.txt")
))

## ----models, eval = TRUE, echo = FALSE----------------------------------------
knitr::kable(data.frame(
  Model = c("Linear", "Linear", "Nonlinear", "Nonlinear"),
  Time = c("m01", "m02", "m01", "m02"),
  Drug = c("d1", "d2", "d1", "d2"),
  File = c("Model_1.txt", "Model_2.txt", "Model_3.txt", "Model_4.txt")
))

## ----eval = TRUE, echo = FALSE------------------------------------------------
knitr::kable(data.frame(
  Category = c("Linear", "Linear", "Linear", "Linear", "Linear", "Linear"),
  Time = c("m01", "m01", "m01", "m01", "m02", "m02"),
  Drug = c("d1", "d1", "d1", "d1", "d1", "d1"),
  ModuleName = c("ABC (Activated)", "BCD (Inhibited)", "CDE (Activated)", "DEF (Activated)", "EFG (Activated)",
                 "FGH (Activated)"),
  targetGenes = c("PQR,QRS,RST", "QPP,PQQ,RST,TRR,WYX,WEX", "QQZ,ZZE,YYZ,YYE,PPA", "PP,APP,BBE", "HJK,JKL,MNJ",
                  "MNO,NOP,PQR,QRS,RST,STU"),
  rank = c(1,2,3,4,1,2)
))

## ----eval = TRUE, echo = FALSE------------------------------------------------
knitr::kable(data.frame(
  Category = c("Coexp", "Coexp", "Coexp", "Coexp", "Coexp", "Coexp"),
  Time = c("*", "*", "*", "*", "*", "*"),
  Drug = c("*", "*", "*", "*", "*", "*"),
  ModuleName = c("gray", "red", "blue", "orange", "green", "black"),
  targetGenes = c("PQR,QRS,RST", "QPP,PQQ,RST,TRR,WYX,WEX", "QQZ,ZZE,YYZ,YYE,PPA", "PP,APP,BBE", "HJK,JKL,MNJ",
                  "MNO,NOP,PQR,QRS,RST,STU"),
  rank = c(1,2,3,4,1,2)
))

## ----eval = TRUE, echo = FALSE------------------------------------------------
knitr::kable(data.frame(
  gene = replicate(5, paste(sample(LETTERS, 5, replace = TRUE), collapse="")),
  x = rnorm(10),
  y = rnorm(10),
  group = c(1,2,1,1,3)
))

