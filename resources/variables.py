from datetime import datetime

TODAY = datetime.now()

# Variables del robot LeerAsegurado
result = True
logTime = TODAY.strftime("%Y%m%d%H%M%S")
tipoMoneda = "GS"
archivosDatos = ""
fila = 0
seccion = 0
fila2 = 0
datos = []
datosArray = []
fechaVto = ""
datosNoHallados = False
cuadroSobreescritura = False
fechaInicioLeida = ""
esCumulo = False
nroDocumento = 4829699
rutaArchivoDatosAsegurado = "C:\Code\RPA\RobotControlCumulos\datosAsegurado.xlsx"

