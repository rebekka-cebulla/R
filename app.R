library(shiny)

writeColor <- function(input)
{
	df=read.table('colors.txt', header=TRUE)
	amounts <- df$amounts
	colors <- df$colors

	amounts[input]=amounts[input]+1
	df <- data.frame(colors,amounts);
	write.table(df, file='colors.txt')
}

# Define UI for famous color experiment app
ui <- fluidPage(

	# App title
	titlePanel("Famous color experiment"),

	# Sidebar layout with input and output definitions
	sidebarLayout(

		# Sidebar panel for inputs
		sidebarPanel(

			# Input: Select the color
			radioButtons("test", "select your favorite color:",
					c("white" = "1",
						"black" = 2,
						"red" = 3,
						"green" = 4,
						"blue" = 5,
						"yellow" = 6)),

    	),

		# Main panel for displaying outputs
		mainPanel(
			# Output: Tabset w/ plot, summary, and table
			tabsetPanel(type = "tabs",
					tabPanel("Plot", plotOutput("plot")),
					tabPanel("Summary", verbatimTextOutput("summary")),
					tabPanel("Table", tableOutput("table"))
      		)
    	)
	)
)

# Define server logic for famous color experiment app
server <- function(input, output) 
{
	# This is called whenever the inputs change.
	d <- reactive(
	{

		v <- switch(input$test,
					"1" = 1, "2" = 2, "3" = 3,
					"4" = 4, "5" = 5, "6" = 6, 6)
		writeColor(v)
	})

  	# Generate a plot of the data
	output$plot <- renderPlot(
	{
		df=read.table('colors.txt', header=TRUE)
		amounts <- df$amounts
		colors <- df$colors
		d()
		pie(amounts, labels=colors)		
	})

	# Generate a summary of the data
	output$summary <- renderPrint(
	{
		df=read.table('colors.txt', header=TRUE)
		amounts <- df$amounts
		colors <- df$colors
		d()
		summary(df)
	})

	# Generate an HTML table view of the data
	output$table <- renderTable(
	{
		df=read.table('colors.txt', header=TRUE)
		amounts <- df$amounts
		colors <- df$colors
		d()
		df
	})
}

# Create famous color app
shinyApp(ui, server)
