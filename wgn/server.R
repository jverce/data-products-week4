#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlotly({
    
    # generate white gaussian noise
    n <- input$n
    noise <- (
      (rnorm(n * n) > 0)%>%
      as.numeric() %>%
      matrix(nrow = n, ncol = n)
    )
    plot_ly(z = noise, type = "heatmap", colors = c("black", "white"))
  })
  
})
