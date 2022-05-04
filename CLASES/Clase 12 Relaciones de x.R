#APPT
#04/05/2022
#Relaciones lineales

semilla <- read.csv("CLASES/BaseDeDatos_estadistica3.csv", header = T)
View(semilla)

#Intercept: alfa
#Funcion buscada: beta

#Plot de Diametro vs Peso en gramos


plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch=20,
     xlab = "Diametro de semilla (mm)",
     ylab = "Peso de semilla (gr)", col= "lightpink")

abline(sem.lm,
       col="red")



#la funcion lm es la que me ayuda a determinar alfa y beta de la regresion

lm(semilla$Peso_gr ~ semilla$Diametro_mm)

sem.lm <- lm (semilla$Peso_gr ~ semilla$Diametro_mm)
summary(sem.lm)


semilla$yprima <- round(-4.93388+ 0.531778* semilla$Diametro_mm,2)

plot(semilla$Diametro_mm, semilla$Peso_gr,
     pch=20,
     xlab = "Diametro de semilla (mm)",
     ylab = "Peso de semilla (gr)", col= "lightpink")

abline(sem.lm,
       col="red")

text(19, 2, "Y= 4.934+ 0.532*x")
text(19, 1.5, "Regresion lineal")

semilla$Ajustados <- round(sem.lm$fitted.values, 2)

sem.lm$coefficients

#Encontrar los siguientes valores aplicando la formula de reg
#18, 11, 14, 16, 15

valores <- c(12.5, 14, 15, 16, 18)
-4.3388+ 0.53178*valores











