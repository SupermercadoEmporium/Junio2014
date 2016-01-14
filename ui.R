library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("junio")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("junio2"))
    ),
    
  
  titlePanel("Junio"),
  sidebarLayout(
    sidebarPanel( "Resumen Junio",
                  style = "color:#2183dd;",
                  tableOutput("confidencejunio"),
                  tableOutput("liftjunio")
    ),
    mainPanel()

  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1junio"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1junio"),
                  textOutput("tablanamecat2junio"),
                  textOutput("tablaprobcat2junio"),
                  textOutput("tablanamecat3junio"),
                  textOutput("tablaprobcat3junio"),
                  textOutput("tablanamecat4junio"),
                  textOutput("tablaprobcat4junio"),
                  textOutput("tablanamecat5junio"),
                  textOutput("tablaprobcat5junio")),
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1junio"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1junio"),
                  textOutput("tabla1namecat2junio"),
                  textOutput("tabla1probcat2junio"),
                  textOutput("tabla1namecat3junio"),
                  textOutput("tabla1probcat3junio"),
                  textOutput("tabla1namecat4junio"),
                  textOutput("tabla1probcat4junio"),
                  textOutput("tabla1namecat5junio"),
                  textOutput("tabla1probcat5junio"))
  )
  
  
  
))
