# Fondo General de Participaciones

# An?lisis de aplicaci?n de funciones exponenciales en la f?rmula del FGP

# Montero Rasgado Josu? Emiliano

library(ggplot2)
library(ggthemes)
library(RColorBrewer)
library(dplyr)
library(MASS) 
library(reshape2) 
library(reshape)
library(readxl)
library(plotly)

JC1_P9 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P9.xlsx",
                       sheet = "FGP", range = "M13:M44", col_names = FALSE,
                       col_types = c("numeric"))

JC2_P9 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P9.xlsx",
                       sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                       col_types = c("numeric"))

JC3_P9 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P9.xlsx",
                       sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                       col_types = c("numeric"))

AC1_P9 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P9.xlsx",
                        sheet = "FGP", range = "M13:M44", col_names = FALSE,
                        col_types = c("numeric"))

AC2_P9 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P9.xlsx",
                        sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                        col_types = c("numeric"))

AC3_P9 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P9.xlsx",
                        sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                        col_types = c("numeric"))

JC1_P10 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P10.xlsx",
                     sheet = "FGP", range = "M13:M44", col_names = FALSE,
                     col_types = c("numeric"))

JC2_P10 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P10.xlsx",
                     sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                     col_types = c("numeric"))

JC3_P10 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P10.xlsx",
                     sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                     col_types = c("numeric"))

AC1_P10 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P10.xlsx",
                     sheet = "FGP", range = "M13:M44", col_names = FALSE,
                     col_types = c("numeric"))

AC2_P10 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P10.xlsx",
                     sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                     col_types = c("numeric"))

AC3_P10 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P10.xlsx",
                     sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                     col_types = c("numeric"))

JC1_P11 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P11.xlsx",
                      sheet = "FGP", range = "M13:M44", col_names = FALSE,
                      col_types = c("numeric"))

JC2_P11 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P11.xlsx",
                      sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                      col_types = c("numeric"))

JC3_P11 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P11.xlsx",
                      sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                      col_types = c("numeric"))

AC1_P11 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P11.xlsx",
                      sheet = "FGP", range = "M13:M44", col_names = FALSE,
                      col_types = c("numeric"))

AC2_P11 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P11.xlsx",
                      sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                      col_types = c("numeric"))

AC3_P11 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P11.xlsx",
                      sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                      col_types = c("numeric"))

JC1_P12 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P12.xlsx",
                      sheet = "FGP", range = "M13:M44", col_names = FALSE,
                      col_types = c("numeric"))

JC2_P12 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P12.xlsx",
                      sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                      col_types = c("numeric"))

JC3_P12 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P12.xlsx",
                      sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                      col_types = c("numeric"))

AC1_P12 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P12.xlsx",
                      sheet = "FGP", range = "M13:M44", col_names = FALSE,
                      col_types = c("numeric"))

AC2_P12 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P12.xlsx",
                      sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                      col_types = c("numeric"))

AC3_P12 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P12.xlsx",
                      sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                      col_types = c("numeric"))

JC1_P13 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P13.xlsx",
                      sheet = "FGP", range = "M13:M44", col_names = FALSE,
                      col_types = c("numeric"))

JC2_P13 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P13.xlsx",
                      sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                      col_types = c("numeric"))

JC3_P13 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_J_PIBr_P13.xlsx",
                      sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                      col_types = c("numeric"))

AC1_P13 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P13.xlsx",
                      sheet = "FGP", range = "M13:M44", col_names = FALSE,
                      col_types = c("numeric"))

AC2_P13 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P13.xlsx",
                      sheet = "FGP", range = "AX13:AX44", col_names = FALSE,
                      col_types = c("numeric"))

AC3_P13 <- read_excel("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\FGP_A_PIBr_P13.xlsx",
                      sheet = "FGP", range = "BD13:BD44", col_names = FALSE,
                      col_types = c("numeric"))

JC1_P9 <- JC1_P9[[1]]
JC2_P9 <- JC2_P9[[1]]
JC3_P9 <- JC3_P9[[1]]
AC1_P9 <- AC1_P9[[1]]
AC2_P9 <- AC2_P9[[1]]
AC3_P9 <- AC3_P9[[1]]

JC_P9 <- cbind(JC1_P9, JC2_P9, JC3_P9)
AC_P9 <- cbind(AC1_P9, AC2_P9, AC3_P9)

JC1_P10 <- JC1_P10[[1]]
JC2_P10 <- JC2_P10[[1]]
JC3_P10 <- JC3_P10[[1]]
AC1_P10 <- AC1_P10[[1]]
AC2_P10 <- AC2_P10[[1]]
AC3_P10 <- AC3_P10[[1]]

JC_P10 <- cbind(JC1_P10, JC2_P10, JC3_P10)
AC_P10 <- cbind(AC1_P10, AC2_P10, AC3_P10)

JC1_P11 <- JC1_P11[[1]]
JC2_P11 <- JC2_P11[[1]]
JC3_P11 <- JC3_P11[[1]]
AC1_P11 <- AC1_P11[[1]]
AC2_P11 <- AC2_P11[[1]]
AC3_P11 <- AC3_P11[[1]]

JC_P11 <- cbind(JC1_P11, JC2_P11, JC3_P11)
AC_P11 <- cbind(AC1_P11, AC2_P11, AC3_P11)

JC1_P12 <- JC1_P12[[1]]
JC2_P12 <- JC2_P12[[1]]
JC3_P12 <- JC3_P12[[1]]
AC1_P12 <- AC1_P12[[1]]
AC2_P12 <- AC2_P12[[1]]
AC3_P12 <- AC3_P12[[1]]

JC_P12 <- cbind(JC1_P12, JC2_P12, JC3_P12)
AC_P12 <- cbind(AC1_P12, AC2_P12, AC3_P12)

JC1_P13 <- JC1_P13[[1]]
JC2_P13 <- JC2_P13[[1]]
JC3_P13 <- JC3_P13[[1]]
AC1_P13 <- AC1_P13[[1]]
AC2_P13 <- AC2_P13[[1]]
AC3_P13 <- AC3_P13[[1]]

JC_P13 <- cbind(JC1_P13, JC2_P13, JC3_P13)
AC_P13 <- cbind(AC1_P13, AC2_P13, AC3_P13)

Beta <- function(C, B){
  B = B[1]*C[1] + B[2]*C[2] + B[3]*C[3]
  return(B)
}

# Resta entre Betas
Diferencia <- function(jc, ac, B){
  dif <- apply(ac, 1, Beta, B = B) - apply(jc, 1, Beta, B = B)
  return(dif)
}


# Propuesta inicial de B

B <- c(0.6, 0.3, 0.1)

df1 <- Diferencia(JC_P9, AC_P9, B)
df2 <- Diferencia(JC_P10, AC_P10, B)
df3 <- Diferencia(JC_P11, AC_P11, B)
df4 <- Diferencia(JC_P12, AC_P12, B)
df5 <- Diferencia(JC_P13, AC_P13, B)

df <- read.csv("C:\\Users\\dulmi\\Downloads\\TrabajoHacienda\\Trabajo\\FGP_Agosto-Julio\\Diferencia_Alternativas.csv")

alt <- df[2]

alt <- data.frame(alt, P11 = df3, P13 = df5)

new_df <- melt(alt, id_vars = Estado)

ggplot(new_df, aes(x=Estado, group = variable)) +
  geom_line(aes(y = value, color=variable, linetype = variable), size = 1) +
  geom_point(aes(y = value, color=variable, shape = variable), size = 2.5) +
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
