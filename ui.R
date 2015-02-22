shinyUI(
pageWithSidebar(
# Application title
headerPanel("Risk of Getting heart attack"),


sidebarPanel(
h4('Please key in the glucose level and BMI then hit the submit button'),
numericInput('glucose', 'Glucose-mg/dl', 90, min = 50, max = 200, step = 5),
numericInput('cholestrol', 'Cholestrol-mg/dL', 180, min = 10, max = 500, step = 1),
numericInput('bmi', 'body mass index - kg/m2', 22, min = 10, max = 30, step = 0.1),
submitButton('Submit')
),

mainPanel(
h3('Results of prediction'),
h4('You entered'),
h4('glucose (mg/dl)'),
verbatimTextOutput("inputValueGlucose"),
h4('cholestrol (mg/dl)'),
verbatimTextOutput("inputValueCholestrol"),
h4('bmi (kg/m2)'),
verbatimTextOutput("inputValueBMI"),
h4('Which resulted in a prediction of '),
verbatimTextOutput("prediction"),

wellPanel(
h3('Documentation'),

h4("
This simple application attempts to predict a person's risk of getting heart attack based on his glucose level, cholestrol and body mass index. To get the risk score, please key in the values at the left panel. The score will be displayed at the main panel. The higher the score, the risk of getting heart attack is higher."),
h4("Note : Cholestrol below 200 do not contribute to a higher score"))

)




)
)
