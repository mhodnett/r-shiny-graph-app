library(shiny)
library(shinydashboard)
library(visNetwork)


dashboardPage(
  dashboardHeader(title = "Network Analysis"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Start", tabName = "start"),
      hr(),
      menuItem("Network Graph", tabName = "network_graph")
    )
  ),
  
  dashboardBody(
    tabItems(
      
      tabItem("start",
              fluidRow(
                box(
                  width = 12, status = "primary", solidHeader = TRUE,
                  title = "App Summary",
                  includeMarkdown("description.md")
                )
              )
      ),

      tabItem("network_graph",
              fluidRow(
                box(
                  width = 4, status = "info", solidHeader = TRUE,
                  title = "Network Graph",
                  htmlOutput("net_graph")
                ),
                box(
                  width = 8, status = "info", solidHeader = TRUE,
                  title = "Project graph",
                  visNetworkOutput("network",height="600px")
                )
              )
      )
      

    )
  )
)
