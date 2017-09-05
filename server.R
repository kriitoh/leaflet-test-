#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)
xcoord=c()
ycoord=c()
objects=data.frame(x=xcoord, y=ycoord)
shinyServer(function(input, output) {
  coords= reactiveValues(x=NULL,y=NULL,color=NULL)
  observe({
    input$add
    isolate({
      coords$x=c(coords$x, input$xcoord)
      coords$y=c(coords$y, input$ycoord)
      coords$color=c(coords$color, input$color)
    })
  })
  
  output$plot1 = renderPlot({
    plot(coords$x,coords$y, col=coords$color, xlim=c(0,1000), ylim=c(0,1000), size=3)
    input$add
    isolate({
      points(coords$x, coords$y, col=coords$color)
    })
  })
  })
 
 

  
  
  

