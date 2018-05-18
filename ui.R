#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that converts between kilos and pounds
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Convert Kilos (kgs) to Pounds (lbs) and Vice-versa"),
  
  # Sidebar with a slider input for weight and unit of measure 
  sidebarLayout(
    sidebarPanel(
       selectInput("unit", "Choose unit of measure: ", c("kg", "lb"), multiple=FALSE),
       sliderInput("unitval",
                   "Choose weight amount to convert:",
                   min = 1,
                   max = 100,
                   50)
    ),
    
    mainPanel(
       h3(textOutput("text")),
       textOutput("outval")
    )
  )
))
