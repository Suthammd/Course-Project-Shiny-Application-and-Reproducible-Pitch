library(shiny)
shinyUI(fluidPage(
         titlePanel("Adult BMI calculator"),
    sidebarLayout(
        sidebarPanel(
            h5("This adult Body Mass Index (BMI) calculator is used for messure a person's leanness based on  
               their weight and height.The result form calculator categorize person into underweight,  
               normal weight, overweight and obese groups.This calculator is also tell a health risk which  
               correlate to person's BMI."),
            numericInput("weight",
                        "Weight (kg) : yours weight in kilogram",
                        min = 10,
                        max = 200,
                        value = 70),
            numericInput("height",
                         "Height (m) : yours height in meter",
                         min = 1,
                         max = 2.5,
                         value = 1.7),
            submitButton("Submit")
            
        ),

        
        mainPanel(
            h2("BMI result"),
            h5("kg/m^2"),
            textOutput("result"),
            h2("Catagory"),
            textOutput("catagory"),
            h3("Your risk"),
            textOutput("risk")
        )
    )
))
