### Creación del Dashboard interactivo
# Comparación de alternativas para el FGP

library(shiny)
library(shinydashboard)


ui <- dashboardPage( skin = "black", title = "Blabla",
     
     dashboardHeader(title = "Alternativas FGP"),
     
     dashboardSidebar(
          menuItem("Gráfico 1"),
          menuItem("Gráfico 2")
     ),
     
     dashboardBody(
          fluidRow(
               box(plotOutput("grafica1"),
               box(
                    selectInput("estados", "Estados:",
                                c("Aguascalientes", "Baja California",
                                  "Baja California Sur", "Campeche",
                                  "Coahuila")), width = 4
                  )
              )
          )
     )
)




server <- function(input, output){
     
     output$grafica1 <- renderPlot({
          
          ggplot(new_df, aes(x=Estado, group = variable)) +
               geom_line(aes(y = value, color=variable, linetype = variable), size = 1.2) +
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
     })
}




# creando dashboard
shinyApp(ui, server)
