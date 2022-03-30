# APPT
# 16/03/2022
# Semana 9/ Dia 1
#Revisar datos de peso de madera 2x2x2

#Madera

url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/Madera.csv"

madera <- read.csv(url)

madera$Sp <- as.factor(madera$Sp)

#Hacer la separación de las especies

library(dplyr)

bar <- madera %>% 
  filter(Sp=="Bar")
hist(bar$Peso_gr)
shapiro.test(bar$Peso_gr)


Chp <- madera %>% 
  filter(Sp=="Chp")
shapiro.test(Chp$Peso_gr)
hist(Chp$Peso_gr, col = "lightpink")

Ebano <- madera %>% 
  filter(Sp=="Ebano")
shapiro.test(Ebano$Peso_gr)


D.Ebano <- madera %>% 
  filter(Sp=="D. Ebano")
hist(D.Ebano$Peso_gr, col = "lightblue")
shapiro.test(D.Ebano$Peso_gr)

#Semillas

url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/Semillas.csv"

semillas <- read.csv(url)

semillas$Cond <- as.factor(semillas$Cond)

Pobre <- semillas %>% 
  filter(Cond=="Pobre")
hist(Pobre$Peso_gr)
shapiro.test(Pobre$Peso_gr)


Q1 <- semillas %>% 
  filter(Cond=="Q1")
hist(Q1$Peso_gr, col = "yellow")  
shapiro.test(Q1$Peso_gr) 


Q2 <- semillas %>% 
  filter(Cond=="Q2")
hist(Q2$Peso_gr, col = "lightgreen")  
shapiro.test(Q2$Peso_gr)


Q3 <- semillas %>% 
  filter(Cond=="Q3")
hist(Q3$Peso_gr, col = "violet")
shapiro.test(Q3$Peso_gr)


Q4 <- semillas %>% 
  filter(Cond=="Q4")
hist(Q4$Peso_gr, col = "blue")
shapiro.test(Q4$Peso_gr)

url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/Madera.csv"

madera <- read.csv(url)

madera$Sp <- as.factor(madera$Sp)



