 # APPT
 # 10/02/2022
 # Semana 4 dia 2
 # Descargar datos de internet

url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfo.csv"

# fileEnconding = "Latin1"
profepa <- read.csv(url)

summary(profepa)
profepa$Inspeccion >= mean(profepa$Inspeccion)

# subset

ins.alta <- subset(profepa, profepa$Inspeccion >= mean(profepa$Inspeccion))
ins.baja <- subset(profepa, profepa$Inspeccion <= mean(profepa$Inspeccion))
Est.C <- subset(profepa, profepa$Entidad == "Chiapas")
Est.C <- subset(profepa, profepa$Entidad == "Coahuila")


Est.C <- profepa[4:8,]
Est.N <- profepa[17:18, ]


