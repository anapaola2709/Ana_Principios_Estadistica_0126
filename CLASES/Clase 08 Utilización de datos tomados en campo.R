# APPT
# 03/03/2022
# Semana 7/ Dia 2
# Utilización de datos tomados en campo

madera <- read.csv("Clases/Madera.csv", header=T)

madera$Sp <- as.factor(madera$Sp)


boxplot(madera$Peso_gr ~ madera$Sp)

library(dplyr)

bar <- madera %>% 
  filter(Sp=="Bar")


# Comparación de una media teorética Mu=8.0 para SP =Barreta

mean(bar$Peso_gr)


t.test(bar$Peso_gr, mu=7.4)

