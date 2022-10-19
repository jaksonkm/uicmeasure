#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import bs4Dash
#' @import fresh
#'
app_ui <- function() {
  theme <- create_theme(
    bs4dash_status(
      primary = "#6f42c1", secondary = "#D2D6DE"
    )
  )
  tagList(

    golem_add_external_resources(),
    golem::activate_js(),
    bs4DashPage(
      freshTheme = theme,
      title = "UIC Measure",
      #sidebar_collapsed = FALSE,

      # navigation bar
      header = bs4DashNavbar(
        title = NULL,
        skin = "light",
        status = "purple"
      ),

      # left sidebar
      sidebar = bs4DashSidebar(
        skin = "light",
        status = "purple",
        title = "UIC Measure",
        #brandColor = "purple",
        elevation = 3,
        #opacity = 0.8,

        # left sidebar menu
        bs4SidebarMenu(
          id = "home",
          bs4SidebarMenuItem(
            "Home",
            tabName = "Home",
            icon = icon('house')
          ),
          bs4SidebarMenuItem(
            "Measure UIC",
            tabName = "measureuic"
          ),
          bs4SidebarMenuItem(
            "Our Project",
            tabName = "ourproject"
          ),
          bs4SidebarMenuItem(
            "About us",
            tabName = "aboutus"
          )
        )
      ),

      # main body
      body = bs4DashBody(
        bs4TabItems(
          # Home ui ----
          bs4TabItem(
            tabName = "Home",
            mod_Home_ui("Home_1")
          ),

          # measure uic ----
          bs4TabItem(
            tabName = "measureuic",
            mod_measureuic_ui("measureuic_1")
          ),

          # ourproject module ----
          bs4TabItem(
            tabName = "ourproject",
            mod_ouproject_ui("ouproject_1")
          ),
          bs4TabItem(
            tabName = "aboutus",
            mod_aboutus_ui("aboutus_1")
          )
        )
      ),

      # footer
      footer = bs4DashFooter(
        left = a(
          target = "_blank",
          "UIC Measure"
        ),
        right = "2022"
      )
    )
  )
}

golem_add_external_resources <- function(){

  addResourcePath(
    'www', system.file('app/www', package = 'uicmeasure')
  )

  tagList(
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    tippy::useTippy(),
    cicerone::use_cicerone(),
  )

}
