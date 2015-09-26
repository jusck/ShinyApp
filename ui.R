library(shiny)
shinyUI(
        pageWithSidebar( 
                headerPanel("Welcome to Iris Type Identification System"),
                sidebarPanel(
                        h6(paste0('This system has used iris data provided in the R datasets package and generated ', 
                                  'a random forest model to identify an Iris ', 
                                  'type by providing 4 variables; the widths and lengths of the sepal and petal. ',
                                  'Use the sliders to set these values and the model will predict the type.')),
                        sliderInput('sl', 'Supply the Length of the Sepal',value = 5, min = 4.3, max = 7.9, step = 0.1,), 
                        sliderInput('sw', 'Supply the Width of the Sepal',value = 3, min = 2, max = 4.4, step = 0.1,), 
                        sliderInput('pl', 'Supply the Length of the Petal',value = 4, min = 1, max = 6.9, step = 0.1,), 
                        sliderInput('pw', 'Supply the Width of the Petal',value = 2, min = 0.1, max = 2.5, step = 0.1,) 
                        
                ),
                mainPanel( 
                        h3('Supplied Values'), 
                        h4('You Supplied a Sepal Length of :'), 
                        verbatimTextOutput("osl"), 
                        h4('You Supplied a Sepal Width of :'), 
                        verbatimTextOutput("osw"), 
                        h4('You Supplied a Petal Length of :'), 
                        verbatimTextOutput("opl"),
                        h4('You Supplied a Petal Width of :'), 
                        verbatimTextOutput("opw"),
                        
                        h4('Based on the model employed we predict the type is:'),
                        verbatimTextOutput("otype")
                ) 
        )
)