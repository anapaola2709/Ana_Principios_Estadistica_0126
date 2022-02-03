# MAGT
# 03/02/2022
# Sesion semana 3 sala de computo 
# Clases


# Muestra basica de R -----------------------------------------------------

# Operaciones basicas en R
2 + 2 
8 / 4
9 + 5 + 8 + 4

# Agregar un objeto : instrucción guardada en un resultado

resultado <- 9 + 5 + 8 + 4

resultado + resultado 

altura <- c(1.67, 1.62, 1.62, 1.73, 1.58, 1.60, 1.70, 1.52, 1.74, 1.74) 

# dividir cada altura entre 2

altura / 2
res.alt <- altura / 2
res.alt


# Graficas ----------------------------------------------------------------


# Primera base de datos  --------------------------------------------------

Ba <- c(1:5)
h <- c(12, 13.1, 14.8, 16.3, 15.3)
DAP <- c(20, 21.2, 22.1, 24.7 , 22.7)
DC <- c(9, 8.5, 7.6, 9.3, 9.2)
t <- c(15, 16, 15, 18, 17)
Sp <- c("Pino", "Pino", "Pino", "Encino", "Encino")

Inventario <- data.frame(Ba, h, DAP, DC, t, Sp)

mean(h)

mean(Inventario$h)
mean(Inventario$Ba)
mean(Inventario$DAP)
mean(Inventario$DC)
mean(Inventario$t)



# Agregar columna en inventario (dxh)
Inventario$dxh <-Inventario$h * Inventario$DAP






