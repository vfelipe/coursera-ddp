#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define logic to convert kilos/pounds
shinyServer(function(input, output) {
  output$text <- renderText(if (input$unit =="kg") {
    paste0("Converting ", input$unitval, " kilos to pounds:")} 
    else {paste0("Converting ", input$unitval, " pounds to kilos:")})
  output$outval <- renderText(if (input$unit =="kg") { input$unitval * 2.2046 } 
    else { input$unitval / 2.2046 })
})
