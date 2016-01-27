library(shiny)
library(UsingR)
library(manipulate)
library(ggplot2)
data(mtcars)

shinyServer(  
  function(input, output) {    
    output$newPlot <- renderPlot({  
      mtcars$am <- factor(mtcars$am,levels=c(0,1), labels=c("Automatic","Manual"))
      if (input$predictType == "cyl") {
        p <- qplot(cyl, mpg, data=mtcars, geom=c("point", "smooth"),
                 color=am, shape=am,
                 main="MPG by number of cylinders", xlab="Cylinder", ylab="MPG")
      } else if (input$predictType == "wt") {
        p <- qplot(wt, mpg, data=mtcars, geom=c("point", "smooth"),
                   color=am, shape=am,
                   main="MPG by number of Weight", xlab="Weight", ylab="MPG")
      } else {
        p <- qplot(hp, mpg, data=mtcars, geom=c("point", "smooth"),
                   color=am, shape=am,
                   main="MPG by number of Horsepower", xlab="Horsepower", ylab="MPG")
      }
      
      print(p)
    })
  }
)