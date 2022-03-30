#APPT
#23/03/22
#Semana 10/ Dia 1

url <- "https://raw.githubusercontent.com/mgtagle/Marco_Principios_Estadistica_2022/main/Clases/Madera.csv"
madera <- read.csv(url)
madera$Sp <- as.factor(madera$Sp)

library(dplyr)


#Hipotesis Nula e Hipotesis Alternativa

Ho=
  H1=
  
  #Valor Alfa=
  
#Extraer Datos
  
  D. Ebano <- madera %>% 
  filter(Sp=="D. Ebano")
shapiro.test(D.Ebano$Peso_gr)
P. value= 0.03049
H aceptado= Alternativa 

Ebano <- madera %>% 
  filter(Sp=="Ebano")
shapiro.test(Ebano$Peso_gr)
P. value= 0.0003461
H aceptado= Alternativa 

Chp <- madera %>% 
  filter(Sp=="Chp")
shapiro.test(Chp$Peso_gr)
P.value= 0.4914
H aceptada= Nula



median(Chp$Peso_gr)
mean(Chp$Peso_gr)

bar <- madera %>% 
  filter(Sp=="Bar")
shapiro.test(bar$Peso_gr)

  
t.test(Ebano$Peso_gr,D.Ebano$Peso_gr,vqr.equal=T)

mean(madera$Peso_gr)
median(madera$Peso_gr)

t.test(Chp$Peso_gr,bar$Peso_gr,vqr.equal=T)


boxplot(madera$Peso_gr ~ madera$Sp)

boxplot(bar$Peso_gr, Chp$Peso_gr, col = "pink")
boxplot(Ebano$Peso_gr, D.Ebano$Peso_gr, col = "lightblue")
boxplot(madera$Peso_gr ~ madera$Sp)
boxplot(madera$Peso_gr ~ madera$Sp, col = "pink")

Chp <- madera %>% 
  filter(Sp=="Chp" & Sp=="Bar")
View (madera)

Chp <- madera %>% 
  filter(Sp=="Chp")

mean(Ebano$Peso_gr)
median(Ebano$Peso_gr)



