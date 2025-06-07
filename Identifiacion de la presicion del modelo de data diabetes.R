# Ruta del archivo
file_path <- "C:/Users/fabri/Downloads/diabetes.xlsx"
# Cargar los datos desde la primera hoja
data <- read_excel(file_path)
# Ver estructura de los datos
str(data)
############Escalar los datos/normalizzar (SOLO los predictores)
data$Pregnancies = scale(data$Pregnancies)
data$Glucose = scale(data$Glucose)
data$BloodPressure = scale(data$BloodPressure)
data$SkinThickness = scale(data$SkinThickness)
data$Insulin = scale(data$Insulin)
data$BMI = scale(data$BMI)
data$DiabetesPedigreeFunction = scale(data$DiabetesPedigreeFunction)
data$Age = scale(data$Age)
###########Creamos el modelo##############
modelo = nnet(Outcome ~ Pregnancies + Glucose + BloodPressure + SkinThickness + Insulin + BMI + DiabetesPedigreeFunction + Age, data = data,
              size = 3, maxit = 500, decay = 0.01, linout = FALSE)
##########Predicciones
predicciones = ifelse(predicciones > 0.5, 1, 0) ##hecho para datos binarios
print(predicciones)
# Comparar con los valores reales
tabla = table(Predicho = predicciones, Real = data$Outcome)
print(tabla)
print(modelo)
# Medir precisión
Precision = sum(diag(tabla)) / sum(tabla)
cat("Precisión del modelo:", round(Precision * 100, 2), "%\n")