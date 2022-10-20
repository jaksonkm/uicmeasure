#' ouproject UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_ouproject_ui <- function(id){
  ns <- NS(id)
  tagList(
    bs4Card(status="primary",height = 500,collapsible = FALSE,
      title = h3(strong("Our Project")), width =10,h5("This project is based on a thesis formulated by Richa Awasthy, the chosen topic of University Industry Collaboration Maturity Model (UICMM) is derived from the document “A Framework for Evaluating and Improving University-Industry Collaboration” published in 2021 by Richa Awasthy.
We a group of 4 members worked with the sponsor, Richa Awasthy, for the project of UIC-Measure. The objectives of the project are to provide a platform for users to determine the University-Industry Collaboration (UIC) Maturity Level and validate the effectiveness of the University-Industry Collaboration Maturity Model (UICMM).
This Web Application allows users to evaluate the UIC Maturity Level of an organization by rating the Maturity Level of the organization in different key process areas. The evaluation result then will be provided to the user, as well as a recommendation of how the organization can improve their Maturity Level of the UIC.",style="text-align: justify;"),
      bs4dash_button("letskl")

    )

  )
}

#' ouproject Server Functions
#'
#' @noRd
mod_ouproject_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_ouproject_ui("ouproject_1")

## To be copied in the server
# mod_ouproject_server("ouproject_1")
