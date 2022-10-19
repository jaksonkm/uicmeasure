#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {


  # Home module
  mod_Home_ui("Home_1")

  # our project module
  mod_ouproject_server("ouproject_1")

  # measure uic module
  mod_measureuic_server("measureuic_1")

  #  module about us
  mod_aboutus_server("aboutus_1")


}

