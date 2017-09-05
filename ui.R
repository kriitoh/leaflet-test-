
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Color Collage"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      h3("Choose a color:"), 
      selectInput("color", label=NULL, choices= c("blue", "red","green", "orange", "yellow", "purple"), selected=NULL, multiple= FALSE),
      h3("Choose the x-coordinate:"),
      sliderInput("xcoord", NULL, 0,1000,0),
      h3("Choose the y-coordinate"),
      sliderInput("ycoord", NULL, 0,1000,0),
      actionButton('add',"Add dot to the plot!")
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("This is a shiny app designed to stretch your creative skills. Add different colored dots to the plot using the
         slider bars to select the x and y coordinates."),
      h4("Check out your creation!"),
        plotOutput("plot1")
    )
  )
))
