overweight_risk <- "High blood pressure, High level of serum lipid, Type 2 DM, Coronary heart disease"
underweight_risk <- "Malnutrition, Vitamin deficit, Osteoporosis, Immune defect"
 


library(dplyr)
library(shiny)
shinyServer(function(input, output) {
            x<- reactive({round(input$weight/(input$height^2),2)})
            
            output$result <- renderText({x()                    })
            
            output$catagory <- renderText({
                if( x() >=40) "Obese Class3"
                else if(x() >=35) "Obese Class2"
                else if(x() >=30) "Obese Class1"
                else if(x() >= 25) "Overweight"
                else if(x() >= 18.5) "Normal"
                else "Underweight"
                
                })
            
            output$risk <-     renderText({
                if(x()<18.5) underweight_risk
                else if(x()>25) overweight_risk
                else "You are normal weight."
                })
 }
)





  