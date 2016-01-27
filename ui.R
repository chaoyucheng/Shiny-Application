library(shiny)
library(manipulate)
shinyUI(pageWithSidebar(  
  headerPanel("MPG versus cylinder, weight or horsepower"),  
  sidebarPanel( 
    radioButtons("predictType", "Prediction factor:",
               c("Cylinder" = "cyl", "Weight" = "wt", "Horsepower" = "hp")),
    br(),
    p(strong(em("Github repository:",
        a("Developing Data Products - Peer Assessment Project; Shiny App",
        href="https://github.com/chaoyucheng/Shiny-Application.git")))),
    p(strong(em("Documentation: In the mtcars dataset, we are specifically
      interested in some factors which may have close relation with the MPG.
      We construct this simple application to demonstrate the fact.
      Please select a radio button on Cylnder, Weight or Horsepower.
      In the main panel, the application will display the plot on MPG against
      the selected factor. The plot will seperated Automate/Manual
      transmission by different colors and shapes")))
  ),
  mainPanel(    
    plotOutput('newPlot')  
  )
))