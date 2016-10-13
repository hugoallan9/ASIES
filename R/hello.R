# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}



suma <- function(a,b){
  return(a+b)
}


mes_a_numero <- function(data,columna, dia, anio){
  meses <- ifelse( toupper(data[[columna]])  == "ENERO", 1,
            ifelse(toupper(data[[columna]])  == "FEBRERO", 2,
            ifelse(toupper(data[[columna]])  == "MARZO", 3,
            ifelse(toupper(data[[columna]])  == "ABRIL", 4,
            ifelse(toupper(data[[columna]])  == "MAYO", 5,
            ifelse(toupper(data[[columna]])  == "JUNIO", 6,
            ifelse(toupper(data[[columna]])  == "JULIO", 7,
            ifelse(toupper(data[[columna]])  == "AGOSTO", 8,
            ifelse(toupper(data[[columna]])  == "SEPTIEMBRE", 9,
            ifelse(toupper(data[[columna]])  == "OCTUBRE",10,
            ifelse(toupper(data[[columna]])  == "NOVIEMBRE",11,
            ifelse(toupper(data[[columna]])  == "DICIEMBRE", 12, NA))))))))))))

  fecha_completa <- as.Date( paste( data[[ anio ]], meses, data[[dia]], sep = "/"  ) )

  dia_semana <- weekdays(fecha_completa)


  return(dia_semana)
}
