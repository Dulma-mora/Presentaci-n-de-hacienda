#### VERSION FINAL DEL DASHBOARD INTERACTIVO
# Comparación de alternativas para el FGP
# DULCE MARÍA MONTERO RASGADO 

library(shiny)
library(shinydashboard)
library(ggplot2)
library(DT)
library(latex2exp)


# listo
header <- dashboardHeader(
     title = span(
          "Alternativas FGP",
          style = "font-family: Tahoma; font-weight: bold"
     ),
     titleWidth = "300px"
)


#
sidebar <- dashboardSidebar(
     width = "300px",
          menuItem(
               text = span("Gráficas y Tablas", style = "font-size: 20px"),
               tabName = "calendar",
               icon = icon("bar-chart-o"),
               badgeColor = "yellow"
          )
     )




body <- dashboardBody(
              box(plotOutput("grafica1"), height = 450,
                  width = 500, color = "green"),
              fluidPage(
                   dataTableOutput("table")
              )
              )
         #box(
          #    selectInput(
           #        inputId = "Estado",
            #       label = "Estado",
             #      choices = unique(new_df$Estado) #seleccionar estado | importante
    #          )
     #    )
     #)
#)


server <- function(input, output, session) {
     
     output$grafica1 <- renderPlot({
          
          ggplot(new_df, aes(x=Estado, group = variable)) +
               geom_line(aes(y = value,  color=variable, linetype = variable), size = 1.2) +
               labs(
                    x = "Estado de la república",
                    y = TeX("\\text{Diferencia de} \\Beta_{1}"),
                    colour = "Alternativas",
                    linetype = "Alternativas",
                    title = "Comparación de alternativas para el FGP",
                    subtitle = "Grafica de la resta entre B1 de cada estado en los meses de Agosto y Julio con los coeficientes orignilaes (0.6C1 + 0.3C2 + 0.1C3)"
               ) +
               scale_colour_discrete(type = scale_color_stata,labels = c("C2 = dIE/ni", "C2 = dIE/dni")) +
               scale_linetype_discrete(labels = c("C2 = dIE/ni", "C2 = dIE/dni")) +
               scale_shape_discrete(labels = c("C2 = dIE/ni", "C2 = dIE/dni")) +
               theme_stata()+
               theme(axis.text.x = element_text(angle = 90, hjust = 1),
                     axis.text.y = element_text(angle = 0, hjust = 1),
                     plot.title = element_text(face = "bold", size = 14),
                     plot.subtitle = element_text(size = 12, hjust = 0),
                     legend.title = element_text(face = "bold", size = 12),
                     axis.title.x = element_text(face = "bold"),
                     axis.title.y = element_text(face = "bold")) +
               scale_y_continuous(breaks = seq(-0.2, 0.3, by = 0.01))
     }, height = 395, width = 780)
     
     output$table <- renderDataTable(new_df)
}


ui <- dashboardPage(
     
     skin = "black",
     title = "Alternativas FGP",
     header = header,
     sidebar = sidebar,
     body = body
)



shinyApp(ui = ui, server = server)





