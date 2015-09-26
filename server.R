library(datasets) 
library(caret)
data(iris)
model <-  train(Species ~ ., data = iris, method="rf", trControl=trainControl(method='cv',number=4))

shinyServer( function(input, output) {
        
        
        output$osl <- renderPrint({input$sl})
        output$osw <- renderPrint({input$sw})
        output$opl <- renderPrint({input$pl})
        output$opw <- renderPrint({input$pw})
         
        output$otype <- renderPrint({as.character(
                                        predict(model,
                                                data.frame(Sepal.Length=input$sl, 
                                                           Sepal.Width=input$sw, 
                                                           Petal.Length=input$pl, 
                                                           Petal.Width=input$pw
                                                           )
                                                )
                                        )
                                     })
        
        output$newHist <- renderPlot({
                hist(galton$child, xlab='child height', col='lightblue',main='Histogram') 
                mu <- input$mu
                lines(c(mu, mu), c(0, 200),col="red",lwd=5)
                mse <- mean((galton$child - mu)^2)
                text(63, 150, paste("mu = ", mu))
                text(63, 140, paste("MSE = ", round(mse, 2))
                )
        })
})