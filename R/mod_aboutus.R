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
    bs4Card(status="primary",height = 500,collapsible = FALSE,
            title = h3(strong("About Us")), width =10,h5("We are a group of researchers, who are passionate about university-industry collaboration."),h5(" Contact at: rich.awasthy@canberra.edu.au.",style="text-align: justify;", sep="<br/>")

    )

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
