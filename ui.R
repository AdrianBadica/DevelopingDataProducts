library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Personal pre-scoring application"),
  sidebarPanel(

  sliderInput('id1','Intended credit duration :', 6,min=6, max=60, step=3),
  sliderInput('id3', 'Installment percentage out of total income: ',10,min=10,max=40,step=10),
  sliderInput('id4', 'Residence Duration :',1,min=1,max=4,step=1),
  sliderInput('id5', 'Age :',20,min=20,max=65,step=1),
  sliderInput('id6','Number of existing credits :',0,min=0,max=2,step=1),
  sliderInput('id7','Number of people in maintainance :',0,min=0,max=2,step=1),
  sliderInput('id8','Telephone :',0,min=0,max=1,step=1),
  sliderInput('id9','Foreign worker :',0,min=0,max=1,step=1),
  submitButton('Submit')
  ),
  mainPanel(
    h3('Maximum amount of credit :'),
    verbatimTextOutput("prediction"),
    
    h6('1. Intended credit duration - the amount of time (expressed in months) in which you wish to repay the credit. Drag the slider according to the intended number of months.' ),
    h6('2. Installment percentage out of total income - the percentage that the monthly installment represents out of your total income. Ranges from 10% to 40%; drag the slider accordingly.'),
    h6('3. Residence duration - the number of years since living at the current adress. Ranges from 1 or less to 4 or more years.'),
    h6('4. Age - age of the customer in years'),
    h6('5. Number of existing credits - ranges from 0 to 2 (or more)'),
    h6('6. Number of people in maintainance - ranges from 0 to 2 (or more)'),
    h6('7. Telephone - 0 if no fixed telephone in the client\'s residence, 1- if there is.'),
    h6('8. Foreign worker - 0 if not, 1 if true.'),
    
    h5 ('After the parameters have been set click the "Submit" button and the amount of credit according to user\'s criteria will be displayed.')
    )
  ))