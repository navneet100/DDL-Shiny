library(manipulate)
data("mtcars")

shinyUI(pageWithSidebar
	(
		headerPanel("Regression plot"),
		sidebarPanel
		(
     		
			uiOutput("choose_variables"),
			h5('Select variable from the above list. Regression fit of this variable( represented as x) in the plot is plotted against mpg')			
			

		),
		mainPanel
		(			
			plotOutput('newPlot')
		)
	)
)