
#---------------------------------------------------
#    Probar un script de probabilidad de Rpubs
#---------------------------------------------------

# 1. Calcular la probabilidad de que X sea menor o igual a 48.

pnorm(48, mean= 50, sd= sqrt(25))

# 2. Calcular la probabilidad de que X sea mayor a 48.

pnorm(48, mean= 50, sd= sqrt(25), lower.tail = FALSE)

# 3. Calcular la probabilidad de que X sea mayor o igual a 45 y menor 
# que 55.

pnorm(55, mean = 50, sd = sqrt(25)) - pnorm(45, mean = 50, sd = sqrt(25))


