#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to calculate the emi
shinyServer(function(input, output) {
   
  output$emi <- reactive({
    num <- input$loan*(input$rate/(100*12))*(1+input$rate/(100*12))^input$inst
    den <- (1+input$rate/(100*12))^(input$inst-1)
    round(num/den,2)

  })
  
})
