

#______________ DISTRIBUCION Z ______________

#--------------------------------
#       Ejemplo 1
#--------------------------------

# Las calificaciones de ingreso a la BENV 
# se ajustan a una distribucion Normal, 
# donde la media de la prueba es 72 y 
# la desviacion estndar es 15.2. 
# ¿Cual es el porcentaje de estudiantes 
# con un puntaje mayor a 84 en el examen?

x<-pnorm(84, mean=72, sd=15.2, lower.tail = FALSE)
x*100

#---------------------------------
#    Ejemplo 2
#---------------------------------

# 1.- Generar las calificaciones de Ciencias
# 27: numero de alumnas/os
# replace es agarrar un numero y volverlo a poner para que sigan siendo la misma
# cantidad siempre, las calificaciones se repiten.
x<-sample(5:10, 27, replace=TRUE)
x

# 2.- Calcular la media
mean(x)

# 3.- Calcular la desviacion estandar
# numeros pequeños significa que los datos estan bien distribuidos
sd(x)

# 4.- Realizar el calculo de la distribucion Normal
# Se quiere saber el porcentaje de alumnas/os que
# tienen una calificacion mayor a 78.

x1<-pnorm(9, mean=7.8, sd=1.88, lower.tail = FALSE)
x1
x1*100

# El 26% de los estudiantes tienen calificación mayor a 9, lo que quiere decir
# que el nivel de desempeño en Ciencias Naturales es medio bajo.
# En este caso son solo 7 alumnos de 27 son aquellos que serán seleccionados 
# para participar en las olimpiadas.

#-------------------------------
#  Practica
#-------------------------------

# 1.- Realiza un ejercicio parecido al ejemplo 1

# 2.- Simula las calificaciones de dos asignaturas
# y calcula la distribucion normal. 

# Nota: No olvides plantear el problemas en cada uno
# de los ejercicios.

#-------------------------------
#    Ejercicio 1
#-------------------------------

# Los alumnos de primer grado de la escuela Lázaro Cárdenas del Río en
# Banderilla, obtuvieron los resultados del desempeño de lectura y
# escritura y de algoritmos de suma y resta.
# Las docentes de los tres grupos requieren saber el número de alumnos que 
# tienen una calificación mayor a 9 en cada una de las dos categorías para
# crear equipos de trabajo por nivel de conocimiento. 
# Cada grupo tiene 20 alumnos.


# 1.- Generar las calificaciones de la evaluación de desempeño en LyE y en SR

LyE<-sample(5:10, 60, replace=TRUE)
LyE

SR<-sample(5:10, 60, replace=TRUE)
SR

# 2.- Calcular la media

mean(LyE)
mean(SR)

# 3.- Calcular la desviacion estandar
# numeros pequeños significa que los datos estan bien distribuidos

sd(LyE)
sd(SR)

# 4.- Realizar el calculo de la distribucion Normal

LyE1<-pnorm(9, mean=7.5, sd=1.68, lower.tail = FALSE)
LyE1
LyE1*100

SR1<-pnorm(9, mean=7.4, sd=1.82, lower.tail = FALSE)
SR1
SR1*100

# El 18% de los estudiantes tienen calificación mayor a 9, lo que quiere decir
# que 11 alumnos conformaran el grupo de lectura y escritura avanzado.

# El 19% de los estudiantes tienen calificaciones mayor a 9, lo que quiere decir
# que 11 alumnos conformaran el grupo avanzado para sumas y restas.