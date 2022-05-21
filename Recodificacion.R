
#_____RECODIFICACIÓN DE VARIABLES_____
# Se trabaja con la matriz "Escuela"

# 1. Importación de la matriz 

#________________________________________
#      Exploración de la matriz
#________________________________________


# numero de variables
dim(Escuela)

# organización basada en factores
str(Escuela)

#Presentación de datos: calificación mínima, máxima. Mediana. primer y tercer cuartil
summary(Escuela)

#_________________________________________
#      Configuración de variables
#_________________________________________

Escuela$genero<-factor(Escuela$genero,
                       levels=c("Femenino", "Masculino"))

Escuela$Matematicas<-factor(Escuela$Matematicas,
                            levels=c("5","6","7","8","9","10"))

Escuela$Español<-factor(Escuela$Español,
                        levels=c("5","6","7","8","9","10"))

Escuela$Ciencias<-factor(Escuela$Ciencias,
                         levels=c("5","6","7","8","9","10"))

Escuela$Geografia<-factor(Escuela$Geografia,
                          levels=c("5","6","7","8","9","10"))


dim(Escuela)
colnames(Escuela)
str(Escuela)
anyNA(Escuela)
summary(Escuela)

Escuela$Matematicas<-factor(Escuela$Matematicas, 
                            levels=c("5", "6", "7", "8", "9","10"))

Escuela$Español<-factor(Escuela$Español,
                        levels=c("5","6","7","8","9","10"))

Escuela$Ciencias<-factor(Escuela$Ciencias,
                         levels=c("5","6","7","8","9","10"))

Escuela$Geografia<-factor(Escuela$Geografia,
                          levels=c("5","6","7","8","9","10"))

str(Escuela)
summary(Escuela)
View(Escuela)

# 1.- Creación de un vector de color
color=c("plum")

# 2.- Creación del gráfico
GB1<-ggplot(Escuela, aes(x=Matematicas))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Matemáticas")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB1

# 1.- Creación de un vector de color
color=c("plum1")

# 2.- Creación del gráfico
GB2<-ggplot(Escuela, aes(x=Español))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Español")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB2

# 1.- Creación de un vector de color
color=c("plum2")

# 2.- Creación del gráfico
GB3<-ggplot(Escuela, aes(x=Ciencias))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Ciencias")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB3

# 1.- Creación de un vector de color
color=c("plum3")

# 2.- Creación del gráfico
GB4<-ggplot(Escuela, aes(x=Geografia))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Calificación Geografía")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualización del gráfico
GB4
