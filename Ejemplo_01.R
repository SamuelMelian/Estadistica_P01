# URL para descargar el archivo directamente
url_correcta <- "https://raw.githubusercontent.com/URJCDSLab/LaboratoriosRInferenciaEstadistica/main/data/lab.xlsx"

# Descargar el archivo (asegúrate de que la carpeta "datos" exista)
download.file(url = url_correcta, 
              destfile = "datos/lab.xlsx", 
              mode = "wb") # El modo "wb" es importante para archivos binarios como .xlsx

lab <- readxl::read_excel("datos/lab.xlsx")

lineal_model = lm(y ~ x, data_frame) #Construir modelo lineal y ~ x

#beta 0 será la primera columna de intercept y la pendiente la primera columna de x (variable idnependiente)

#En el P valor se evalua si mg es significamente distinto de 0 por lo que se rechaza la hipotesis nula. Como es una normal, un truco es hacer estimate std mas menos 2 veces el error y si no contiene al 0 entonces bien

#En F statistics si es significativamente mayor que uno significa que está bien 
#El r cuadrado indica la cantidad de variabilidad explicada por el modelo (el 68 por ciento de la variabilidad de la variable objetivo (de la y) se explica con el modelo construido) y r cuadrado ajustado penaliza el numero de variables que aparecen ya que artificialmente s epuede hacer que r cuadrado sea 1 si el numero de variables tiende a infinito
#El sombreado de la recta de regresion es el intervalo de confianza de la media

