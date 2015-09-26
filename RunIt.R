
setwd("/Volumes/Local Shared/R-Folders/ShinyApp/")

load(file='~/ShinyCreds.RSAV')

library(shiny)

install.packages('devtools')
devtools::install_github('rstudio/shinyapps')

shinyapps::setAccountInfo(name=creds$name, token=creds$token, 
                          secret=creds$secret)

library(shinyapps)
shinyapps::deployApp('/Volumes/Local Shared/R-Folders/ShinyApp')

runApp()