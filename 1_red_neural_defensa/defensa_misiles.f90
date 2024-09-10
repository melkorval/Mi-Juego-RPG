PROGRAM defensa_misiles
    ! En este juego de Rol yo estoy programando una inteligencia artificial
    ! primitiva, un preceptron para automizacion de sistema de deteccion de misiles
    ! datos traidos de radar para entrenar esta red neural para deteccion de misiles

    IMPLICIT NONE
    ! pesos iniciales de red neuronal
    DOUBLE PRECISION :: w1 = 0.5, w2 = 0.5, w3 = 0.5, Answer, bias

    ! Estos datos son dados por el rada donde se indica la intensidad, angulo, distancia
    ! del objeto detectado, lo que hay que hace es encontrar un funcion lineal que 
    ! le cada variable un importancia determinada es decir un valor de un peso, luego se sumatoria
    ! para encontrar un resultado el cual es 0 no es un misil o no se detecta como misil y 1 para 
    ! deteccion de misil, luego se compara con los datos reales y se reajustan los pesos en caso
    ! en que no coincida con el valor real del dato, esto se hace hasta que coincidan con los datos
    ! reales

    ! funcion lineal: Resultados_predicho = w1*intesidad + w2*angulo + w3*distancia + sesgo
    ! es sesgo es para compresar la incertidumbre de los resultados 

    DOUBLE PRECISION :: Intensity(4) = [0.9, 0.2, 0.7, 0.1]
    DOUBLE PRECISION :: Angle(4) = [45, 120, 75, 60]
    DOUBLE PRECISION :: Distance(4) = [2000.0, 1500.0, 1000.0, 500]
    INTEGER :: Results_real = [1, 0, 1, 0] ! 0 no deteccion de misiles, 1 deteccion
    ! de misil

    

END PROGRAM defensa_misiles
