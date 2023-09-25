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
  data.frame(Patient_ID = c("p01", "p02", "p03"),
             Platelets_m01 = 150 + runif(3)*100,
             Platelets_m02 = 150 + runif(3)*100,
             Age = floor(runif(3, 30, 90)),
             drugNaive = c("Yes", "Yes", "No"))
)

## ----eval=TRUE, echo = FALSE--------------------------------------------------
knitr::kable(data.frame(Sample_ID = smp_ids,
                 Time = c("m01", "m02", "m01", "m02", "m01", "m02"),
                 Tissue = c("A", "A", "A", "A", "A", "A"),
                 Drug = c("d1", "d1", "d1", "d1", "d2", "d2"),
                 Patient_ID = c("p01", "p01", "p02", "p02", "p03", "p03"))
)

## ----models, eval = TRUE, echo = FALSE----------------------------------------
knitr::kable(data.frame(
  Model = c("Linear", "Linear", "Nonlinear", "Nonlinear"),
  Time = c("m01", "m02", "m01", "m02"),
  Drug = c("d1", "d2", "d1", "d2"),
  File = c("Model_1.txt", "Model_2.txt", "Model_3.txt", "Model_4.txt")
))

## ----example, echo=FALSE------------------------------------------------------
knitr::kable(data.frame(
  module = c("A", "A", "A", "B", "B", "B"),
  gene = c("ABC", "DEF", "GHI", "JKL", "MNO", "PQR")
))

## ----groupby, eval=FALSE------------------------------------------------------
#  table <- data %>%
#    dplyr::group_by(module) %>%
#    dplyr::transmute(list = paste(gene, collapse = ","))

