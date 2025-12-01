# URL para descargar el archivo directamente
url_correcta <- "https://raw.githubusercontent.com/URJCDSLab/LaboratoriosRInferenciaEstadistica/main/data/lab.xlsx"

# Descargar el archivo (asegúrate de que la carpeta "datos" exista)
download.file(url = url_correcta, 
              destfile = "datos/lab.xlsx", 
              mode = "wb") # El modo "wb" es importante para archivos binarios como .xlsx

lab <- readxl::read_excel("datos/lab.xlsx")

Una vez que he hecho pull, toco los archivos que quiera y guardo