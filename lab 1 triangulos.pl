% determinar tipo de triangulo
equilatero(X,Y,Z) :- X== Y, Y == Z.
isoceles(X,Y,Z) :- not(equilatero(X,Y,Z)),( X == Y ; X == Z ; Y == Z).
escaleno(X,Y,Z):- not(equilatero(X,Y,Z)), not(isoceles(X,Y,Z)).
