library(shiny)
HARisk <- function(glucose,bmi,cholestrol) {

  if (cholestrol <200) 
{
    return (glucose*bmi/5000)
}
  else
{
    return (glucose*bmi*(cholestrol/200)/5000)
}


}


shinyServer(
function(input, output) {
output$inputValueGlucose <- renderPrint({input$glucose})
output$inputValueBMI <- renderPrint({input$bmi})
output$inputValueCholestrol <- renderPrint({input$cholestrol})
output$prediction <- renderPrint({HARisk(input$glucose, input$bmi,input$cholestrol)})
}
)