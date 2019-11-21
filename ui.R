library(shiny)

# Define ui for IrisApps that draws a histogram
ui <- fluidPage(
    
    titlePanel("IrisApps"),
    
    # Sidebar with radio buttons for attribute option and a slider input for bins range 
    sidebarLayout(
        sidebarPanel(
            helpText("This Apps provide visualization of Iris dataset in the form of Histogram, depending on the Iris's attribute that the user select."),
            
            radioButtons("option", "Choose Iris attribute:", list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
            sliderInput("bins",
                        "Specify the bins range:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),
        
        # Visualization of Iris Dataset through Histogram
        mainPanel(
            mainPanel(plotOutput("distPlot"))
        )
    )
)