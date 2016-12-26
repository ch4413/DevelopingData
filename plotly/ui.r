library(shiny)
library(ggplot2)
library(markdown)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Motor Trend Car Road Tests"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 20,
                  value = 10),
      selectizeInput(
               "Variable", "Variable:", choices = names(mtcars)
      ),
      includeMarkdown("include.md")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))