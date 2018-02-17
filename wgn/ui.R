#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(markdown)
library(plotly)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("White Gaussian Noise"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("n",
                   "N",
                   min = 2,
                   max = 64,
                   value = 8)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      includeMarkdown("doc.md"),
       plotlyOutput("distPlot")
    )
  )
))
