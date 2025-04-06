library(ggplot2)

#######Ingresar datos##########
EquipoA = c(2, 3, 1, 4, 2, 3, 2, 1, 3, 2)
EquipoB = c(3, 2, 1, 3, 2, 2, 4, 2, 3, 1)

########Promedios de los equipos###########
mean(EquipoA)
mean(EquipoB)
########### Desviación Estándar #########
sd(EquipoA)
sd(EquipoB)

t.test(EquipoA, EquipoB, var.equal = TRUE)

goles <- c(EquipoA, EquipoB)
equipo <- rep(c("Equipo A", "Equipo B"), each = 10)
datos <- data.frame(Equipo= equipo, Goles = goles)

#####Grafico###########
boxplot(Goles ~ Equipo, data = datos,
        main = "Comparación de goles por equipo",
        ylab = "Goles anotados",
        col = c("skyblue", "salmon"))