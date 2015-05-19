library(shiny)

shinyUI(fluidPage(
  titlePanel("Data Product-Stocks"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Input stock symbol.Source will be Google."),
    
      textInput("symb", "Symbol", "MSFT"),
    
      dateRangeInput("dates", 
        "Date range",
        start = as.character(Sys.Date()-7), 
        end = as.character(Sys.Date())),
   
      actionButton("get", "Get Stock"),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
        value = FALSE),
      
      checkboxInput("adjust", 
        "Adjust prices for inflation", value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))