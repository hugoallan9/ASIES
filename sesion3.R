
# Cargando la base de datos de defunciones 2014 ---------------------------

library(foreign)

defunciones <- read.spss('/home/hugo/Downloads/defunciones.sav', to.data.frame = T)

defunciones.diccionario <- as.data.frame(attr(defunciones, "variable.labels"))

summary(defunciones$Sexo)



# Definiendo una funcion -------------------------------------------------



