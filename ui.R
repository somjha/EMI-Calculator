#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that calculates the EMI to be paid.
# The loan amount, the annual interest rate and the no of installments 
# to be paid are inputs that are used to calculate the output EMI.
shinyUI(fluidPage(
  
  # Application title
  titlePanel("EMI Calculator"),
  
  # Sidebar with a various inputs 
  sidebarLayout(
    sidebarPanel(
      h3("The EMI calculator will take your loan amount, "),
      h3("the annual interest rate to be applied to the loan and "),
      h3("the number of monthly payments that you will make "),
      h3("to calculate the amount to be paid in each installment "),
      h3(" "),
      numericInput("loan", label=h3("Loan amount"), value=10000),
      sliderInput("rate", label=h3("Annual Interest Rate(%)"), min=0, 
                  max=10, value=0, step=0.01),
      numericInput("inst", label=h3("No of monthly installments to be paid"), 
                  value =100)
    ),
    
    # Calculated EMI displayed
    mainPanel(
      h3("Calculated EMI"),
      textOutput("emi")
    )
  )
))
