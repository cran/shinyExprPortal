## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=TRUE, echo = FALSE--------------------------------------------------
x <- t(sapply(1:10, function(x) rnorm(6)))
rownames(x) <- lapply(1:10, function(x) { 
  paste(LETTERS[x:(x+2)], collapse = "")
})
smp_ids <- expand.grid(c("S1", "S2", "S3"), 1:2)
smp_ids <- sort(sprintf("%s_%02d", smp_ids[,1], smp_ids[,2]))
colnames(x) <- smp_ids
knitr::kable(as.data.frame(x))

## ----eval = TRUE, echo = FALSE------------------------------------------------
knitr::kable(
  data.frame(Sample_ID = c("S1", "S2", "S3"),
             Platelets_m01 = 150 + runif(3)*100,
             Platelets_m02 = 150 + runif(3)*100,
             Age = floor(runif(3, 30, 90)),
             drugNaive = c("Yes", "Yes", "No"))
)

## ----lookup_example, echo=FALSE-----------------------------------------------
print(data.frame(
  source = c("microarray", "microarray", "microarray") ,
  sample_id = c("sample_1", "sample_2", "sample_3"),
  subject_id = c("subject_1", "subject_2", "subject_3"),
  group = c("control", "treatment", "treatment")))

## ----show_av------------------------------------------------------------------
shinyExprPortal::show_available_modules()

## ----original, eval=FALSE-----------------------------------------------------
#  library(shinyExprPortal)
#  run_app("config.yaml")

## ----changed, eval=FALSE------------------------------------------------------
#  library(shinExprPortal)
#  library(RColorBrewer)
#  run_app("config.yaml")

