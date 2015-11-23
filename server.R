library(shiny)
library(UsingR)
data(Galton)
data(mtcars)
library(ggplot2)

col_names<-colnames(mtcars)

shinyServer(
	function(input,output)
	{
		
		  output$choose_variables <- renderUI({
				selectInput("Variables", "Variables", as.list(col_names))
			})
  
		
		output$newPlot <- renderPlot(
		{
			y<-input$Variables
			
			x<-mtcars[,y]
			
			if(!is.null(x))
			{
				m<-lm(x ~ mpg, data=mtcars )
				
				plot(m)
				
				#plot(mpg,x, pch=18, col="blue")				
				#abline(m )			
			}
			
		}
		)
		
		
		

		

	}

)