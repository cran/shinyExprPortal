## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
#  moduleName_config <- function(config, ...) {
#    message("Checking moduleName configuration")
#    # Add dependency names here
#    requiredPackages <- c("")
#    stopIfNotInstalled(requiredPackages, "moduleName")
#    if (is.null(config$required_variable)) {
#      stop("moduleName:
#           'required_variable' is missing")
#    }
#    config
#  }
#  
#  mod_moduleName_ui <- function(module_name, config, module_config) {
#    ns <- NS(module_name)
#    title <- module_config$title
#    description <- module_config$description
#  
#    required_variable <- module_config$required_variables
#  
#    tabPanel(
#        title = title %||% "Default title",
#        value = "moduleName",
#        tags$h5(description %||% "Default description"),
#        splitLayout(
#          verticalLayout(
#            wellPanel(
#             # Inputs that use the ns object above
#            )
#          ),
#          verticalLayout(
#            # Outputs
#          ),
#          cellWidths = c("20%", "80%"),
#          cellArgs = list(style = "white-space: normal;")
#        )
#      )
#  
#  }
#  
#  mod_moduleName_server <- function(module_name, config, module_config) {
#    moduleServer(module_name, function(input, output, session) {
#      ns <- session$ns
#  
#      measures <- config$data$measures
#      expression_matrix <- config$data$expression_matrix
#      sample_lookup <- config$data$sample_lookup
#      subject_var <- config$subject_variable
#      sample_var <- config$sample_variable
#  
#      required_variable <- module_config$required_variable
#      # Module code here
#    })
#  }
#  

## ----eval = FALSE-------------------------------------------------------------
#  library(shinyExprPortal)
#  
#  source("newModule.R")
#  source("anotherModule.R")
#  
#  extra_modules <- c("newModule", "anotherModule")
#  
#  run_app("config.yaml", extra_modules = extra_modules)

