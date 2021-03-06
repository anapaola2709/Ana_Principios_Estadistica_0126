#APPT
#11/05/22
#Examen 3

geiser <- read.csv("CLASES/erupciones.csv")
View(geiser)

plot(geiser$waiting, geiser$eruptions, pch=19,
     xlab = "Tiempo de espera entre erupciones (min)",
     ylab = "Duracion de la erupcion (min)",
     col= "gray",
     main = "Geiser Old Faithful")
     


#Correlacion________________________________________________________________________________________________________

#Realizar las estad韘ticas descriptivas de ambas variables (media, desviaci贸n est谩ndar y varianza)

mean(geiser$eruptions)
#3.487783
mean(geiser$waiting)
#70.89706

sd(geiser$eruptions)
#1.141371
sd(geiser$waiting)
#13.59497

var(geiser$eruptions)
#1.302728
var(geiser$waiting)
#184.8233


# 緾u醠 es el coeficiente de correlaci贸n (r)?

cor.test(geiser$eruptions, geiser$waiting)
#0.9008112

# 縀s significativa la correlaci髇?
#No

#Regresi贸n lineal___________________________________________________________________________________________________


#Establecer la Hip贸tesis nula
#La hipotesis es nula ya que existe una correlacion y su valor de p es mayor a 0.05

#Establecer la Hip贸tesis alternativa
#La hip髏esis no es alternativa, ya que revasa el valor de 0.05


lm(geiser$eruptions ~ geiser$waiting)

# 緾u醠 es el valor del intercepto (伪)?
#-1.87402

# 緾u醠 es el valor de la pendiente (尾)?
#0.07563

#Realizar un an醠isis de regresi髇 (Mencione siempre el valor P-value para determinar si es significativa o no)

geiser.lm <- lm(geiser$eruptions ~ geiser$waiting)
summary(geiser.lm)

#valor de p
#2.2e-16

#Son significativas las regresoras: intercepto (伪) y la pendiente (尾)
#Si


# 緾u醠 ser� la duraci髇 en minutos de la pr髕ima erupci髇, si los tiempo de espera son los dados en el siguiente cuadro?

geiser$yprimas <- round(-1.874016+ 0.075628* geiser$eruptions, 2)

valores <- c(80, 40, 45, 53, 61)
-1.874016+ 0.075628*valores
#4.176224, 1.151104, 1.529244, 2.134268, 2.739292


abline(geiser.lm,
       col="red")
text(75, 2, "Y= 1.874016+ 0.075628*x")
text(75, 1.7, "Regresion lineal")











