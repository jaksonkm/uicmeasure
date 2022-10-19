#' Home UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList

library(fresh)
mod_Home_ui <- function(id){
  ns <- NS(id)
  tagList(
    bs4Jumbotron(
      title = "Welcome, Level up Your University's Industry Collaboration",
      lead = "The collaboration between universities and the industry is increasingly perceived to enhance innovation and knowledge exchange.UIC has gained widespread interest in recent years due to a transition in global economic conditions involving rapid growth, innovation and competition.
To improve the effectiveness of UIC a framework needs to be followed and the subsequently used tool is UIC Maturity Model. With the help of UIC maturity model, we can assess the collaborative ability of an organization UICMM can be used by experts to assess the maturity of an organization’s UIC",
      skin = "dark",
      status = "primary",
      btnName = "Lets Go",
      href= mod_measureuic_ui("measureuic_1")
    )
  )
}

#' Home Server Functions
#'
#' @noRd
mod_Home_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}


## To be copied in the UI
# mod_Home_ui("Home_1")

## To be copied in the server
# mod_Home_server("Home_1")
