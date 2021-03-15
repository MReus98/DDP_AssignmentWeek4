library(colourpicker)
shinyUI(fluidPage(
    titlePanel(' Interactive plotting of the Iris dataset'),
    sidebarLayout(
        sidebarPanel(
            selectInput('xCol', 'X axis', names(iris)[-5]),
            selectInput('yCol', 'Y axis', names(iris)[-5]),
            selectInput("species", "Species", c("all", levels(iris$Species))),
            colourInput("color", "Point color", value ="blue")
        ),
        
        mainPanel(
            tabsetPanel(type = "tabs",
                        tabPanel("Plot", plotOutput('plot')),
                        tabPanel("Documentation", br(), p("This application allows 
                                                          the user to plot different 
                                                          variables (sepal width, sepal 
                                                          length, petal length, petal 
                                                          width) of the Iris dataset 
                                                          against each other for all 
                                                          or one of the species included 
                                                          in the dataset."),
                                 br(), p("Created by Marieke Reus on 15-3-2021"))
                        )
            )
        )
    ))