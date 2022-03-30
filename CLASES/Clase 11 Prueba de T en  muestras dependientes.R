#APPT
#30/03/2022
#Prueba de t de muestras dependientes 

datos <- read.csv("CLASES/mainproduccion.csv", header = T)
View(datos)

datos$Tiempo <- as.factor(datos$Tiempo)



boxplot(datos$Kgsem ~ datos$Tiempo, col = "pink",
        xlab = "Tiempo",
        ylab = "semilla (kg)")
t.test(datos$Kgsem ~ datos$Tiempo, paired =TRUE)
Ha= rechazada
Ho= aceptada



boxplot(datos$BioRama ~ datos$Tiempo, col = "yellow",
        xlab = "Tiempo",
        ylab = "BioRama (ton)")
t.test(datos$BioRama ~ datos$Tiempo, paired =TRUE)      
Ha= aceptada
Ho= rechazada


boxplot(datos$Germ ~ datos$Tiempo, col = "lightblue",
        xlab = "Tiempo",
        ylab = "% de Germinacion")
t.test(datos$Germ ~ datos$Tiempo, paired =TRUE)







