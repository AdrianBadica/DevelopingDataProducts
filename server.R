

library(shiny)
shinyServer(
  function (input,output){

#  
   output$prediction <- renderPrint(3072+input$id1*146-input$id3*809/10-input$id4*15+input$id5*11+input$id6*82+input$id7*19-input$id8*999-input$id9*391)
  })