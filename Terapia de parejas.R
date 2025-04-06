antes <- c(7, 6, 5, 6, 7)
despues <- c(8, 7,8, 8, 9)

t.test(antes, despues, paired = TRUE)

s <- c(antes, despues)
mom <- rep(c("Antes", "Despues"), each=5)
persona4 <- rep(1:5, times= 2)
datos <- data.frame(Persona = persona4, Momento = mom, Puntaje = s)


######Grafico########
boxplot(Puntaje ~ Momento, data = datos,
        main = "Satisfacción antes y después de la terapia",
        ylab = "Puntaje de satisfacción",
        col = c("skyblue", "lightgreen"))