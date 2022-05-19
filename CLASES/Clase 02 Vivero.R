# APPT
#09/02/2022
#SESION SEMANA 4 SALA DE COMPUTO



# Importar datos ----------------------------------------------------------

vivero <- read.csv("CLASE/BasadeDatosVivero.csv", header = TRUE)

# Estadistica descriptiva -------------------------------------------------



# Medidas de Tendencia Central ---------------------------------

mean(vivero$IE)
median(vivero$IE)
range(vivero$IE)
fivenum(vivero$IE)


boxplot(vivero$IE, horizontal = T, col = "pink")
hist(vivero$IE, col = "pink")
hist(vivero$IE, ylim =  c(0,12))
hist(vivero$IE, col = "pink")

frec <- table(vivero$IE)

setwd("C:/Repositorio_GIT/Ana_Principios_Estadistica_0126/CLASES")

