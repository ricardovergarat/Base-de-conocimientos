% problema 1 lab 3 el casino
comida(ensalada,apio,16).
comida(ensalada,cebolla,40).
comida(ensalada,cilantro,4).
comida(carne,pollo,239).
comida(carne,cerdo,242).
comida(carne,pavo,145).
comida(carne,vacuno,250).
comida(acom,pure,88).
comida(acom,arroz,130).
comida(acom,papas,312).
comida(postre,naranja,41).
comida(postre,manzana,52).
comida(postre,piña,50).

litgh(E,C,A,P):- comida(ensalada,E,X),
                 comida(carne,C,Y),
                 comida(acom,A,Z),
                 comida(postre,P,W),
                 Calorias is X + Y + Z + W,
                 display(Calorias),
                 Calorias<450.
