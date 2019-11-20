library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Application title
    titlePanel("Iris datasets"),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(radioButtons("option", "Column of iris dataset:", list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),
        
        # Show a plot of the generated distribution
        mainPanel(
            mainPanel(plotOutput("distPlot"))
        )
    )
)
