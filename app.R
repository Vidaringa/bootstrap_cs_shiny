# BOOTSTRAP CHEAT SHEET FOR SHINY ----
# DS4B 202 R ----

library(shiny)
library(tidyverse)
library(plotly)

ui <- fluidPage(title = "Bootstrap Cheat Sheet for Shiny")


server <- function(input, output, session) {

}

shinyApp(ui = ui, server = server)
