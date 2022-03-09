
# _____________________Tablas de frecuencias___________________

# 1.- Importar la matriz iris

data(iris)

# 2.- Exploración de la matriz
# Dimensión de la matriz, tiene 150 individuos (observaciones) y 5 variables.
dim(iris)

# 3.- Nombre de las variables
colnames(iris)

# 4.- Tipos de variables
# Es un conjunto de diferentes tipos de variables.
# El único que no es númerico es la variable de Species, este corresponde 
# a un valor cualitativo
str(iris)

# 5.- Visualización de una variable especifica
# Despliegue los datos de una variable cuando su contenido es muy extenso
# La especie setosa se encuentra desde la fila 1 hasta la 50
# La especie Versicolor se encuentra desde la fila 51 hasta la 100
# La especie virginica se encuentra desde la fila 101 hasta la 150
iris$Species

# 6.- En busca de valores perdidos
# No hay valores perdidos
anyNA(iris)

#------------------------------------------------------------------------
# Generación de tablas de frecuencia
#------------------------------------------------------------------------

# 1.- Posición en una variable especifica Petal.Lenght indico que el
# nombre me lo acorte a PL, y lo que resulte de esa indicación quiero que
# lo ponga en formato tabla, lo que resulte adquiera un formato de data.frame
# a partir de lo anterior voy a generar una nueva variable (objeto) llamada
# tabla_PL.
tabla_PL<-as.data.frame(table(PL=iris$Petal.Length))

# 2.- Frecuencia absoluta
tabla_PL

# 3.- Se construye la tabla de frecuencias completas redondeando
# a 3 decimales.

transform(tabla_PL,
          freqAC=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))


# 4.- Agrupación de variables 8 clases
tabla_clases<-as.data.frame(table(Petal.Lenght=factor(cut(iris$Petal.Length,
                                                          breaks = 8))))

# 5.- Visualización de la tabla
tabla_clases

# 6.- Construcción de tabla de frecuencias completa redondeado a 3 decimales
tabla<-transform(tabla_clases,
          freqAC=cumsum(Freq),
          Rel=round(prop.table(Freq),3),
          RelAc=round(cumsum(prop.table(Freq)),3))

# 7.- Visualizar la tabla
tabla

# 7.1.- Instalamos la librería knitr
installa.packages("knirt")

# 7.2.- Se abre la librería
library(knitr)

# 7.3.- Se visualiza la tabla
kable(tabla)
