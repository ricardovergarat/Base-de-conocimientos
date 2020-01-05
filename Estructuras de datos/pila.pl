crear([]).
insertar(Elem, Pila, [Elem|Pila]).
eliminar([], []).
eliminar([Elem|Pila], Pila).
tope([]) :- write("Error").
tope(Pila) :- tope(Pila, R), write(R).
tope([Elem|Pila], Elem).
esVacia([], 1).
esVacia([Elem|Pila],0).

profundidad([], 0).
profundidad([E|P], R) :- profundidad(P, R2), R is R2+1.

fondo([E|P], R) :- invertir([E|P], Aux), tope(Aux, R).

invertir([],[]).
invertir([E|P],L):- invertir(P,R), concat(R,[E],L).

concat([],P,P).
concat([E|P1],P2,[E|P3]):- concat(P1,P2,P3).
