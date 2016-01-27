library(shiny)
library(manipulate)
shinyUI(pageWithSidebar(  
  headerPanel("Exploratory ploting on mtcars dataset"),  
  sidebarPanel( 
    radioButtons("predictType", "Please choose an item you are interested:",
               c("MPG v.s. Transmission" = "am",
                 "MPG v.s. Cylinder" = "cyl",
                 "MPG v.s. Weight" = "wt",
                 "MPG v.s. Horsepower" = "hp")),
    br(),
    p(strong(em("Github repository:",
        a("Developing Data Products Course Project: A Shiny Appplication",
        href="https://github.com/chaoyucheng/Shiny-Application.git")))),
    p(strong(em("Documentation: In the mtcars dataset, we are specifically
      interested in some factors which may have close relation with the MPG.
      We construct this simple application to demonstrate the fact.
      Please select a radio button on Cylnder, Weight or Horsepower.
      In the main panel, the application will display the plot on MPG against
      the selected factor. The plot will seperated Automatic/Manual
      transmission by different colors and shapes")))
  ),
  mainPanel(    
    plotOutput('newPlot')  
  )
))