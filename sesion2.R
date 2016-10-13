

# Instalacion de la biblioteca desde Github -------------------------------
library(devtools)
install_github("hugoallan9/ASIES")



# Cargando la bibilioteca -------------------------------------------------

library(ASIES)
data("nacimientos")


# Cargando el diccionario de una forma un poco mas legible ----------------

nacimientos.labels <- as.data.frame(attr(nacimientos, "variable.labels"))
View(nacimientos.labels)

# nacimientos <- as.data.frame(nacimientos)

summary(nacimientos)


# Acceso ------------------------------------------------------------------

nacimientos$Depreg
nacimientos[[1]]
nacimientos[,1]




# Observando la variable, forma 1 -----------------------------------------


summary(nacimientos$Mesocu)



# Observando la variable, forma 2 -----------------------------------------

summary( nacimientos["Mesocu"])



# Observando la variable, forma 3 -----------------------------------------

summary( nacimientos[, "Mesocu"] )



# Haciendo submatrices ----------------------------------------------------

nacimientos[10:20,1, drop = FALSE]



# Filtros, nacidos en Guatemala -------------------------------------------

nacimientos[nacimientos$Depreg == "Guatemala",]



# Mas detalle en el filtro ------------------------------------------------

nacimientos[nacimientos$Depreg == "Guatemala", "Mesocu"]



# Como dataframe ----------------------------------------------------------

nacimientos[nacimientos$Depreg == "Guatemala", "Mesocu", drop = F]



# Mas columnas ------------------------------------------------------------

nacimientos[nacimientos$Depreg == "Guatemala", c("Mesocu", "Diaocu"), drop = F]


meses<- ifelse(nacimientos$Mesocu == "Enero", 1, ifelse(nacimientos$Mesocu == "Febrero",2, ifelse( nacimientos$Mesocu == "Marzo", 3, ifelse( nacimientos$Mesocu == "Abril", 4,
                  ifelse( nacimientos$Mesocu == "Mayo", 5, ifelse( nacimientos$Mesocu == "Junio", 6, ifelse( nacimientos$Mesocu == "Julio", 7,
                  ifelse(nacimientos$Mesocu == "Agosto",8, ifelse( nacimientos$Mesocu == "Septiembre", 9, ifelse( nacimientos$Mesocu == "Octubre", 10, ifelse(
                    nacimientos$Mesocu == "Noviembre",11, ifelse( nacimientos$Mesocu == "Diciembre", 12, -1 ) ) ) )  ) ) ) ) )  ) ))

#meses <- as.data.frame(meses)

nacimientos$mes_num_ocu <- meses

nacimientos$fecha_ocu <- as.Date(paste(nacimientos$Diaocu, nacimientos$mes_num_ocu, nacimientos$Añoreg ,sep= '/'))

nacimientos$dia_nombre <- weekdays(nacimientos$fecha_ocu)


# Agregando niveles a los días --------------------------------------------

nacimientos$dia_nombre <- as.factor(nacimientos$dia_nombre)

summary(nacimientos$dia_nombre)

