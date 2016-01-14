#Primer Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {

  output$junio<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_Junio[y,y], digits=4))
  })
  
  output$junio2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_Junio[y,y], digits=4))
  })
  
  output$confidencejunio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_Junio[x,y]/a_matrix_Junio[x,x], digits=4))
  })
  
  output$liftjunio<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_Junio[x,y], digits=4)/(round(a_matrix_Junio[x,x], digits=4)*round(a_matrix_Junio[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tablanamecat2junio<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  output$tablanamecat4junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tablanamecat5junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  output$tabla1namecat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tabla1namecat2junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
  })
  
  output$tabla1namecat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tabla1namecat4junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tabla1namecat5junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5junio<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Junio,
                                 Junio.Categoriaf3==input$select2,
                                 select=c(Junio.CATEGORIA1)))    
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  
})


#Junio
catg_Junio<-data.frame(Junio$CATEGORIA1, Junio$Categoriaf3,
                       Junio$SLSEQ, Junio$TICKET)

catg_sin_rep_Junio<-unique(catg_Junio)

