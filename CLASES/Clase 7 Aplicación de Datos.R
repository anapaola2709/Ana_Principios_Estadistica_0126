# APPT
# 02/03/2022
# Semana 7/ Dia 1
# Utilización de datos tomados en campo

Semillas <- read.csv("CLASES/BaseDeDatos_estadistica.csv",header = T)

# identificar semillas con valores menores al rango

quantile(Semillas$Peso_gr)
graf.

boxplot(Semillas$Peso_gr)

which(Semillas$Peso_gr)

#identificar semillas con valores menores al rango

range(Semillas$Peso_gr)

fivenum(Semillas$Peso_gr,0.25)

which(Semillas$Peso_gr<2.671)

#identificar los cuantiles
quantile(Semillas$Peso_gr,0.25)
quantile(Semillas$Peso_gr,0.5)
quantile(Semillas$Peso_gr,0.75)
quantile(Semillas$Peso_gr, 1)

# Tablas de frecuencia para semillas
table(Semillas$Cond)
numero <- table(Semillas$Cond)

