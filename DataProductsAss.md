Diamonds App Pitch
========================================================
author: Andrew Parzyszek
date: August 11th, 2016
transition: rotate



Motivation
========================================================
Our Mission is to help Mankind, solve world Hunger and make the world a better Place:

the Diamonds App

With this app day of endless coding in the Commandline are over...

App Description:

With this App,you are able to analysize the R Dataset 'Diamonds'. You can customize the X- and Y-axis variables, the color of the plot dependet on a third variable and betweet 3 diffenet plotting Typs.



The Engine
========================================================


```
function(input, output) {
      dataset <- reactive({diamonds})
      
      output$plot <- renderPlot({
            p <- ggplot(dataset(), aes_string(x=input$x,y=input$y))
            if (input$plotType=="Boxplot")
                  {p<-p+geom_boxplot()}      
            else if (input$plotType=="Line")  
                  {p<-p+geom_line()}
            else {p<-p+geom_point()}
            p <- p + aes_string(color=input$color)
            print(p)
            
      }, height=700)
      
}
```

Strong, Efficiant, Good

Usecase 1
========================================================






```
processing file: DataProductsAss.Rpres
Quitting from lines 51-53 (DataProductsAss.Rpres) 
Fehler in summary(mpg) : Objekt 'mpg' nicht gefunden
Ruft auf: knit ... withCallingHandlers -> withVisible -> eval -> eval -> summary
Zusätzlich: Warnmeldung:
In data("mpg") : data set 'mpg' not found
Ausführung angehalten
```
