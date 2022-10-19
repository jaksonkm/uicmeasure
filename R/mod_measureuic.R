#' measureuic UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
#' @import bs4Dash
#' @import datasets
#' @import ggplot2
#' @import rsconnect
#' @import fresh
#'
#'
#'
library(fresh)
mod_measureuic_ui <- function(id){
  ns <- NS(id)
  tagList(
    bs4Card(
      title = h2(strong("UIC Measure")),
      status = "primary",
      solidHeader = FALSE,
      collapsible = FALSE,
      collapsed = FALSE,
      closable = FALSE,
      label = NULL,
      width = 12,

      fluidRow(

      # Sidebar with a slider input for number of bins
        bs4Card(

          solidHeader = FALSE,
          collapsible = FALSE,
          collapsed = FALSE,
          closable = FALSE,
          label = NULL,
          width = 6,

          # Text field to enter organization name
          textInput(ns("uniName"),
                    label = "Organization name:",
                    placeholder = "My Organization",
                    value = ""),
          fluidRow(
          h4("Contextual"), # Header for Contextual KPA section

          # Tooltip definition of Contextual KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers and success factors
                     that play a major role during the initiation and formation of
                     a UIC."
          )),

          # Drop-down selection of level for Contextual KPA
          shinyWidgets::pickerInput(ns("contextual"),
                      label = "Select Contextual level:",
                      choices = c("Undefined" = "1",
                                  "Efforts to understand the variety of possible UICs types, and identify motivations. No set process or criteria for identification of stakeholders." = "2",
                                  "Variety of UIC mechanisms explored. Clear articulation of motivation. Predefined criteria for identification of stakeholders." = "3",
                                  "A portfolio of UICs is maintained. Precisely defined and organizationally aligned motivations. Defined process for identification of stakeholders." = "4",
                                  "Multiple types of collaboration. Shared motivation having wide impact. Informed identification and review of stakeholders." = "5")),

          # Text field to enter justification for Contextual choice
          textInput(ns("justificationContextual"),
                    label = "Justify Contextual selection:",
                    placeholder= "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Organizational"), # Header for Organizational KPA section

          # Tooltip definition of Organisational KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers, and success factors
                     at organizational level that influence the success of a UIC.
                     Organizational characteristics such as strategy and vision of
                     a university, and absorptive capacity of an industry play an
                     important role in establishing effective UICs.")),

          # Drop-down selection of level for Organizational KPA
          shinyWidgets::pickerInput(ns("organizational"),
                      label = "Select Organizational level:",
                      choices = c("Unaware of collaboration needs." = "1",
                                  "Understanding of the value of collaboration. No concern for Alumni relationships." = "2",
                                  "Practices adopted to encourage collaboration. Short-term or lower levels of engagements. Alumni relationships encouraged." = "3",
                                  "Collaboration is part of the organisation’s strategy. Measures adopted to facilitate effective collaboration. Deeper levels of collaboration. Well-maintained alumni relationships." = "4",
                                  "Collaborative efforts are measured and rewarded. Deeper and longer term collaborative engagements. Improvement measures for alumni relationships." = "5")),

          # Text field to enter justification for Organizational choice
          textInput(ns("justificationOrganizational"),
                    label = "Justify Organizational selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Cultural Adaptation"), # Header for Cultural Adaptation KPA section

          # Tooltip definition of Cultural Adaptation KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers and success factors
                     related to differences in the cultural and organisational
                     operation of universities and industry. These practices help
                     universities and industry to adapt to the each other’s
                     cultures and requirements.")),

          # Drop-down selection of level for Cultural Adaptation KPA
          shinyWidgets::pickerInput(ns("culturalAdaptation"),
                      label = "Select Cultural Adaptation level:",
                      choices = c("Difference in goals and objectives." = "1",
                                  "Developing understanding of difference in culture, mission and goals between partner organisations." = "2",
                                  "Creation of shared goals. Awareness of time requirements." = "3",
                                  "Common vision. Adapting to each other’s requirements." = "4",
                                  "Working seamlessly with each other" = "5")),

          # Text field to enter justification for Cultural Adaptation choice
          textInput(ns("justificationCulturalAdaptation"),
                    label = "Justify Cultural Adaptation selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Operation and Management"), # Header for Operation and Management KPA section

          # Tooltip definition of Operation and Management KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers and success factors
                     associated with effective operation and management of UICs.")),

          # Drop-down selection of level for Operation and Management KPA
          shinyWidgets::pickerInput(ns("operationAndManagement"),
                      label = "Select Operation and Management level:",
                      choices = c("No formal process to collaborate." = "1",
                                  "Identifying objectives and goals." = "2",
                                  "Processes for collaboration formalized." = "3",
                                  "Quantitative measurement of collaborations." = "4",
                                  "Collaboration processes are reviewed and improvement measures adopted. Existing processes can be adapted to address the requirements of changing environment." = "5")),

          # Text field to enter justification for Operation and Management choice
          textInput(ns("justificationOperationAndManagement"),
                    label = "Justify Operation and Management selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Personnel"), # Header for Personnel KPA section

          # Tooltip definition of Personnel KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers and success factors
                     associated with identifying suitable people for UIC.
                     Motivated people play an important role in establishing
                     collaboration and determining its outcome. Individuals with
                     an understanding of both academic and business worlds are
                     considered the driving force behind successful partnerships
                     'Boundary spanners' have been identified as key players in
                     establishing and sustaining relationships.")),

          # Drop-down selection of level for Personnel KPA
          shinyWidgets::pickerInput(ns("personnel"),
                      label = " Select Personnel level:",
                      choices = c("Working in isolation. Not aware of the need to collaborate." = "1",
                                  "Motivated to collaborate. Identification of key individuals." = "2",
                                  "Capable people to identify collaboration opportunities, reach out and engage." = "3",
                                  "Individuals recognize the value of collaboration. Individuals are trained. Self-motivated to engage in various collaborative efforts." = "4",
                                  "Boundary spanners are appointed. Leadership is involved and inspires individuals to collaborate." = "5")),

          # Text field to enter justification for Personnel choice
          textInput(ns("justificationPersonnel"),
                    label = "Justify Personnel selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Communication"), # Header for Communication KPA section

          # Tooltip definition of Communication KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"Communication forms the very basis of a successful
                     relationship. This category covers practices, barriers and
                     success factors associated with communication. Communication
                     encompasses several aspects such as codification (information
                     dissemination), cooperatives, meetings, networks, and
                     agreements. Effective communication is a critical factor in
                     the success of UIC as it can influence trust creation and
                     maintenance, networking, and sharing of goals, which are
                     important for fostering effective UICs.")),

          # Drop-down selection of level for Communication KPA
          shinyWidgets::pickerInput(ns("communication"),
                      label = "Select Communication level:",
                      choices = c("No communication." = "1",
                                  "Limited one way communication. Information is only provided when requested." = "2",
                                  "Regularly scheduled communication. Two-way exchange." = "3",
                                  "Planned as a part of collaboration. Systematic and multiple modes of communication. Balanced two-way exchange." = "4",
                                  "Seamless communication. Communication of progress. Wider results dissemination methods." = "5")),

          # Text field to enter justification for Communication choice
          textInput(ns("justificationCommunication"),
                    label = "Justify Communication selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Social Capital"), # Header for Social Capital KPA section

          # Tooltip definition of Social Capital KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers and success factors
                     related to social capital. Social capital refers to the
                     qualities and resources that encourage and support individual
                     or collective action for the mutual benefit of people in a
                     social network. The factors in this category play a crucial
                     role in formation and success of UICs.")),

          # Drop-down selection of level for Social Capital KPA
          shinyWidgets::pickerInput(ns("socialCapital"),
                      label = "Select Social Capital level:",
                      choices = c("Non existent." = "1",
                                  "There is trust regarding ethical performance of partners. Commitment specific to the collaborative effort. Trust needs to be established beyond individual UICs." = "2",
                                  "Partner is considered as trusted, generally based on past experiences. Low commitment of time or resources." = "3",
                                  "Complete trust among partners due to previous experiences. High commitment in terms of time or resources." = "4",
                                  "Stronger trust leading to continued engagement. High commitment demonstrated through resource engagement and leadership involvement. There is continuous mutual improvement in trust and commitment between stakeholders" = "5")),

          # Text field to enter justification for Social Capital choice
          textInput(ns("justificationSocialCapital"),
                    label = "Justify Social Capital selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Legal"), # Header for Legal KPA section

          # Tooltip definition of Legal KPA
          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"This category covers practices, barriers and success factors
            associated with legal aspects of UIC including the negotiation of
            intellectual property rights.")),

          # Drop-down selection of level for Legal KPA
          shinyWidgets::pickerInput(ns("legal"),
                      label = "Select Legal level:",
                      choices = c("Not applicable." = "1",
                                  "Developing understanding regarding legal aspects including IP." = "2",
                                  "Shared and enforceable guidelines established." = "3",
                                  "Clear and agreed IP and publication rights strategy." = "4",
                                  "Understanding of the value of partnerships beyond the IP rights. Review of strategies" = "5")),

          # Text field to enter justification for Legal choice
          textInput(ns("justificationLegal"),
                    label = "Justify Legal selection:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Outcome"), # Header for Outcome KPA section

          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"..."
          )),
          # Tooltip definition of Outcome KPA

          # Drop-down selection of level for Outcome KPA
          shinyWidgets::pickerInput(ns("outcome"),
                      label = "Select Outcome level:",
                      choices = c("Unclear." = "1",
                                  "Some idea about goals." = "2",
                                  "Clear definition of goals." = "3",
                                  "Mutually beneficial outcomes aligned with goals. A broad spectrum of outcomes." = "4",
                                  "Collaboration is measured and reviewed based on outcomes." = "5")),

          # Text field to enter justification for Outcome choice
          textInput(ns("justificationOutcome"),
                    label = "Justification:",
                    placeholder = "I chose this level because...",
                    value = ""),
          fluidRow(
          h4("Knowledge Management"), # Header for Knowledge Management KPA section

          shinyWidgets::dropdown(style = "material-circle",icon = icon("info"),size = 'xs',width = 500,"..."
          )),
          # Tooltip definition of Knowledge Management KPA

          # Drop-down selection of level for Knowledge Management KPA
          shinyWidgets::pickerInput(ns("knowledgeManagement"),
                      label = "Select Knowledge Management level:",
                      choices = c("No management." = "1",
                                  "Limited knowledge sharing." = "2",
                                  "Organization recognizes the importance of knowledge management. Basic knowledge management infrastructure established" = "3",
                                  "Knowledge management is part of the organizational strategy." = "4",
                                  "Knowledge management processes are reviewed for improvements." = "5")),

          # Text field to enter justification for Knowledge Management choice
          textInput(ns("justificationKnowledgeManagement"),
                    label = "Justify Knowledge Management selection:",
                    placeholder = "I chose this level because...",
                    value = ""),

          # Button to generate results
          shinyWidgets::actionBttn(ns("calculate"), "Calculate")
        ),

        # Show a plot of the generated distribution
        bs4Card(
          title = "Results",
          status = "primary",
          solidHeader = FALSE,
          collapsible = FALSE,
          collapsed = FALSE,
          closable = FALSE,
          label = NULL,
          width = 6,

          # Maturity levels outline
          h4("Maturity Levels of UICMM"),
          tableOutput(ns("maturityLevels")),

          # Output: header + summary of answers
          h4("Summary"),
          textOutput(ns("uniName")),
          tableOutput(ns("values")),

          # Output: header + results
          textOutput(ns("results")),
          plotOutput(ns("resultsPlot")),

          # Button to save results
          shinyWidgets::downloadBttn(ns("downloadResults"), "Save Results")

        )
      )
    )

  )
}

#' measureuic Server Functions
#'
#' @noRd
mod_measureuic_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    # Static display of the overall UICMM levels and their definitions
    output$maturityLevels <- renderTable({
      data.frame(
        Level = c("5: Continuous improvement",
                  "4: Practised and Managed",
                  "3: Encouraged",
                  "2: Initial",
                  "1: Non-existant"),
        Definition = c("Continual improvement. Diversity of stakeholders. Collaboration processes are reviewed, measured and improved.",
                       "Ensuring the quality of both the collaboration process and outcomes. Collaboration related activities are part of work-flow with commitment from leadership, and training and rewards for individuals engaging in collaboration.",
                       "Culture encourages collaboration. Value of collaboration is recognised. Awareness of various ways of interaction. Clear objectives for collaboration.",
                       "Awareness of value of collaboration leads to efforts to gain knowledge about various ways of collaboration. People who understand the value of collaboration may do it.",
                       "Isolated entities. There is general unwillingness to collaborate. Collaboration is not valued.")
      )
    })

    # Reactive expression for display of organization name
    dispUniName <- eventReactive(input$calculate, {
      input$uniName
    })

    # Display the organization name above summary table
    output$uniName <- renderText({
      dispUniName()
    })

    # Reactive expression for display of Contextual justification
    justificationContextual <- eventReactive(input$calculate, {
      input$justificationContextual
    })

    # Reactive expression for display of Organizational justification
    justificationOrganizational <- eventReactive(input$calculate, {
      input$justificationOrganizational
    })

    # Reactive expression for display of Cultural Adaptation justification
    justificationCulturalAdaptation <- eventReactive(input$calculate, {
      input$justificationCulturalAdaptation
    })

    # Reactive expression for display of Operation and Management justification
    justificationOperationAndManagement <- eventReactive(input$calculate, {
      input$justificationOperationAndManagement
    })

    # Reactive expression for display of Personnel justification
    justificationPersonnel <- eventReactive(input$calculate, {
      input$justificationPersonnel
    })

    # Reactive expression for display of Communication justification
    justificationCommunication <- eventReactive(input$calculate, {
      input$justificationCommunication
    })

    # Reactive expression for display of Social Capital justification
    justificationSocialCapital <- eventReactive(input$calculate, {
      input$justificationSocialCapital
    })

    # Reactive expression for display of Legal justification
    justificationLegal <- eventReactive(input$calculate, {
      input$justificationLegal
    })

    # Reactive expression for display of Outcome justification
    justificationOutcome <- eventReactive(input$calculate, {
      input$justificationOutcome
    })

    # Reactive expression for display of Knowledge Management justification
    justificationKnowledgeManagement <- eventReactive(input$calculate, {
      input$justificationKnowledgeManagement
    })

    # Determine advice to display for improving Contextual
    adviceContextual <- eventReactive(input$calculate, {
      if (as.character(input$contextual) == 1) {
        "Efforts to understand the variety of possible UICs types, and identify motivations. No set process or criteria for identification of stakeholders."
      } else if (as.character(input$contextual) == 2) {
        "Variety of UIC mechanisms explored. Clear articulation of motivation. Predefined criteria for identification of stakeholders."
      } else if (as.character(input$contextual) == 3) {
        "A portfolio of UICs is maintained. Precisely defined and organizationally aligned motivations. Defined process for identification of stakeholders."
      } else if (as.character(input$contextual) == 4) {
        "Multiple types of collaboration. Shared motivation having wide impact. Informed identification and review of stakeholders."
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Organizational
    adviceOrganizational <- eventReactive(input$calculate, {
      if (as.character(input$organizational) == 1) {
        "Understanding of the value of collaboration. No concern for Alumni relationships."
      } else if (as.character(input$organizational) == 2) {
        "Practices adopted to encourage collaboration. Short-term or lower levels of engagements. Alumni relationships encouraged."
      } else if (as.character(input$organizational) == 3) {
        "Collaboration is part of the organisation’s strategy. Measures adopted to facilitate effective collaboration. Deeper levels of collaboration. Well-maintained alumni relationships."
      } else if (as.character(input$organizational) == 4) {
        "Collaborative efforts are measured and rewarded. Deeper and longer term collaborative engagements. Improvement measures for alumni relationships."
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Cultural Adaptation
    adviceCulturalAdaptation <- eventReactive(input$calculate, {
      if (as.character(input$culturalAdaptation) == 1) {
        "Developing understanding of difference in culture, mission and goals between partner organisations."
      } else if (as.character(input$culturalAdaptation) == 2) {
        "Creation of shared goals. Awareness of time requirements."
      } else if (as.character(input$culturalAdaptation) == 3) {
        "Common vision. Adapting to each other’s requirements."
      } else if (as.character(input$culturalAdaptation) == 4) {
        "Working seamlessly with each other"
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Operation and Management
    adviceOperationAndManagement <- eventReactive(input$calculate, {
      if (as.character(input$operationAndManagement) == 1) {
        "Identifying objectives and goals."
      } else if (as.character(input$operationAndManagement) == 2) {
        "Processes for collaboration formalized."
      } else if (as.character(input$operationAndManagement) == 3) {
        "Quantitative measurement of collaborations."
      } else if (as.character(input$operationAndManagement) == 4) {
        "Collaboration processes are reviewed and improvement measures adopted. Existing processes can be adapted to address the requirements of changing environment."
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Personnel
    advicePersonnel <- eventReactive(input$calculate, {
      if (as.character(input$personnel) == 1) {
        "Motivated to collaborate. Identification of key individuals."
      } else if (as.character(input$personnel) == 2) {
        "Capable people to identify collaboration opportunities, reach out and engage."
      } else if (as.character(input$personnel) == 3) {
        "Individuals recognize the value of collaboration. Individuals are trained. Self-motivated to engage in various collaborative efforts."
      } else if (as.character(input$personnel) == 4) {
        "Boundary spanners are appointed. Leadership is involved and inspires individuals to collaborate."
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Communication
    adviceCommunication <- eventReactive(input$calculate, {
      if (as.character(input$communication) == 1) {
        "Limited one way communication. Information is only provided when requested."
      } else if (as.character(input$communication) == 2) {
        "Regularly scheduled communication. Two-way exchange."
      } else if (as.character(input$communication) == 3) {
        "Planned as a part of collaboration. Systematic and multiple modes of communication. Balanced two-way exchange."
      } else if (as.character(input$communication) == 4) {
        "Seamless communication. Communication of progress. Wider results dissemination methods."
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Social Capital
    adviceSocialCapital <- eventReactive(input$calculate, {
      if (as.character(input$socialCapital) == 1) {
        "There is trust regarding ethical performance of partners. Commitment specific to the collaborative effort. Trust needs to be established beyond individual UICs."
      } else if (as.character(input$socialCapital) == 2) {
        "Partner is considered as trusted, generally based on past experiences. Low commitment of time or resources."
      } else if (as.character(input$socialCapital) == 3) {
        "Complete trust among partners due to previous experiences. High commitment in terms of time or resources."
      } else if (as.character(input$socialCapital) == 4) {
        "Stronger trust leading to continued engagement. High commitment demonstrated through resource engagement and leadership involvement. There is continuous mutual improvement in trust and commitment between stakeholders"
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Legal
    adviceLegal <- eventReactive(input$calculate, {
      if (as.character(input$legal) == 1) {
        "Developing understanding regarding legal aspects including IP."
      } else if (as.character(input$legal) == 2) {
        "Shared and enforceable guidelines established."
      } else if (as.character(input$legal) == 3) {
        "Clear and agreed IP and publication rights strategy."
      } else if (as.character(input$legal) == 4) {
        "Understanding of the value of partnerships beyond the IP rights. Review of strategies"
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Outcome
    adviceOutcome <- eventReactive(input$calculate, {
      if (as.character(input$outcome) == 1) {
        "Some idea about goals."
      } else if (as.character(input$outcome) == 2) {
        "Clear definition of goals."
      } else if (as.character(input$outcome) == 3) {
        "Mutually beneficial outcomes aligned with goals. A broad spectrum of outcomes."
      } else if (as.character(input$outcome) == 4) {
        "Collaboration is measured and reviewed based on outcomes."
      } else {
        "Continuous improvement."
      }
    })

    # Determine advice to display for improving Knowledge Management
    adviceKnowledgeManagement <- eventReactive(input$calculate, {
      if (as.character(input$knowledgeManagement) == 1) {
        "Limited knowledge sharing."
      } else if (as.character(input$knowledgeManagement) == 2) {
        "Organization recognizes the importance of knowledge management. Basic knowledge management infrastructure established"
      } else if (as.character(input$knowledgeManagement) == 3) {
        "Knowledge management is part of the organizational strategy."
      } else if (as.character(input$knowledgeManagement) == 4) {
        "Knowledge management processes are reviewed for improvements."
      } else {
        "Continuous improvement."
      }
    })

    # Reactive expression to create data frame of all input values
    levelValues <- eventReactive(input$calculate, {

      # Data frame to display KPA/Level as a table
      data.frame(

        # Name of the KPA
        Name = c("Contextual",
                 "Organizational",
                 "Cultural Adaptation",
                 "Operation and Management",
                 "Personnel",
                 "Communication",
                 "Social Capital",
                 "Legal",
                 "Outcome",
                 "Knowledge Management"),

        # Level of the KPA according to user input
        Level = as.character(c(input$contextual,
                               input$organizational,
                               input$culturalAdaptation,
                               input$operationAndManagement,
                               input$personnel,
                               input$communication,
                               input$socialCapital,
                               input$legal,
                               input$outcome,
                               input$knowledgeManagement)),

        # Justification of why the user selected the chosen KPA
        Justification = c(justificationContextual(),
                          justificationOrganizational(),
                          justificationCulturalAdaptation(),
                          justificationOperationAndManagement(),
                          justificationPersonnel(),
                          justificationCommunication(),
                          justificationSocialCapital(),
                          justificationLegal(),
                          justificationOutcome(),
                          justificationKnowledgeManagement()),

        # Advice to reach the next level of the KPA, according to the current level
        Advice = c(adviceContextual(),
                   adviceOrganizational(),
                   adviceCulturalAdaptation(),
                   adviceOperationAndManagement(),
                   advicePersonnel(),
                   adviceCommunication(),
                   adviceSocialCapital(),
                   adviceLegal(),
                   adviceOutcome(),
                   adviceKnowledgeManagement()),
        stringsAsFactors = FALSE)
    })

    # Show the values in an HTML table
    output$values <- renderTable({
      levelValues()
    })

    # Reactive expression to calculate overall level
    overallLevel <- eventReactive(input$calculate, {
      min(c(input$contextual,
            input$organizational,
            input$culturalAdaptation,
            input$operationAndManagement,
            input$personnel,
            input$communication,
            input$socialCapital,
            input$legal,
            input$outcome,
            input$knowledgeManagement))
    })

    # Show results as text once the "Calculate" button is pressed
    output$results <- renderText({
      paste("Maturity level of", dispUniName(), ":", overallLevel())
    })

    # Display results as a graph
    output$resultsPlot <- renderPlot({

      data <- levelValues()
      name <- factor(data$Name, levels = rev(data$Name[order(data$Level)]))
      level <- data$Level

      ggplot(data, aes(x = name, y = level)) +
        geom_col(fill = "#6F42C1") +
        coord_flip() +
        theme(
          panel.grid.major = element_blank(),
          axis.title = element_blank()
        )
    })

    # Downloadable copy of results
    output$downloadResults <- downloadHandler(
      filename = function() {
        paste(dispUniName(), "_results.csv", sep = "")
      },
      content = function(file) {
        write.csv(levelValues(), file, row.names = FALSE)
      }
    )


  })
}

## To be copied in the UI
# mod_measureuic_ui("measureuic_1")

## To be copied in the server
# mod_measureuic_server("measureuic_1")
