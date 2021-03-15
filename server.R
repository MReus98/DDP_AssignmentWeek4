shinyServer(function(input, output, session) {
    df <- reactive({
        data <- iris[, c(input$xCol, input$yCol)]
        if (input$species != "all") {
            data <- subset(data, iris$Species == input$species)
        }
        data
    })

    output$plot <- renderPlot({plot(df(), pch = 20, cex = 3, col = input$color,
                                    main = "Iris dataset")})
})