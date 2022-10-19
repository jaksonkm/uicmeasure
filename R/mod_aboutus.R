#' aboutus UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_aboutus_ui <- function(id){
  ns <- NS(id)
  tagList(
 
  )
}
    
#' aboutus Server Functions
#'
#' @noRd 
mod_aboutus_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
 
  })
}
    
## To be copied in the UI
# mod_aboutus_ui("aboutus_1")
    
## To be copied in the server
# mod_aboutus_server("aboutus_1")
