# library(shiny)
# library(ggplot2)
# 
# dataset <- cars
# 
# fluidPage(
#       
#       titlePanel("GGPlot of R Dataset Diamonds"),
#       
#       sidebarPanel(
#             
#             h3("Description: "),
#             h4("With this Shiny Project,you are able to analysize the R Dataset 'Diamonds'. You can customize the X- and Y-axis variables, the color of the plot dependet on a third variable and betweet 3 diffenet plotting Typs."),
#             h5("Please assign the Y-Axis..."),
#             selectInput('y', 'Y',c("price",names(dataset[-7]))),
#             h5("Please assign the X-Axis..."),
#             selectInput('x', 'X',  c("carat",names(dataset[-1]))),
#             h5("Please assign the Color of the Plot..."),
#             selectInput('color', 'Color', c('cut', names(dataset[-2]))),
#             h5("Please assign the Plottype..."),
#             selectInput('plotType', 'Plottype', c('Point', 'Line', 'Boxplot'))
#       ),
#       
#       mainPanel(
#             plotOutput('plot')
#       )
# )
library(shiny)
library(ggplot2)

dataset <- mpg


fluidPage(
      
      titlePanel("GGPlot of R Dataset Diamonds"),
      
      sidebarPanel(
            
            h3("Description: "),
            h4("With this Shiny Project,you are able to analysize the R Dataset 'Diamonds'. You can customize the X- and Y-axis variables, the color of the plot dependet on a third variable and betweet 3 diffenet plotting Typs."),
            h5("Please assign the Y-Axis..."),
            selectInput('y', 'Y',c(names(dataset[-7]))),
            h5("Please assign the X-Axis..."),
            selectInput('x', 'X',  c(names(dataset[-1]))),
            h5("Please assign the Color of the Plot..."),
            selectInput('color', 'Color', c(names(dataset[-2]))),
            h5("Please assign the Plottype..."),
            selectInput('plotType', 'Plottype', c('Point', 'Line', 'Boxplot'))
      ),
      
      mainPanel(
            plotOutput('plot')
      )
)
