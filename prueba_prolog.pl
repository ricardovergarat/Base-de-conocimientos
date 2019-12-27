% prueba

% PREDICADOS NESESARIOS
top([],[]).
top([E|P],E).
insertar(E,P,[E|P]).
el_pop([E|P],P).

% pila
profundidad([],0).
profundidad([E|P],R) :- profundidad(P,RT), R is RT + 1.
fondo([E|P],F) :- invertir([E|P],AUX), top(AUX,F).
invertir([],[]).
invertir([E|P],PI) :- insertar(E,PI,[E|PI]),invertir(P,PI).
duplicar([E|P],D) :- fondo([E|P],F),insertar(F,PT),insertar(F,PT),el_pop([E|P]),
                     duplicar(P,D).
concatenar_p([],[],[]).
concatenar_p([],P2,P2).
concatenar_p(P1,P2,P3) :- fondo(P2,F2),insertar(F2,P1).

% cola
% predicados nesesarios
frente([F|C],F).

largo([],0).
largo([F|C],R) :- largo(C,RT), R is RT + 1.
ultimo([F|C],R) :- invertir([F|C],R2),frente(R2,R).
concatenar_c([],L2,L2).
concatenar_c([F|C],L2,[F|L3]) :- concatenar_c(C,L2,L3).
inverso([],[]).
inverso([F|C],[CN,F]) :- inverso(C,CN).

%-----------------------------------------------------
%-----------------------------------------------------
%CORECIONES
%pila
invertir_bueno([],[]).
invertir_bueno(P,PP,PI) :- top(P,T),insertar(T,PP,PPT),el_pop(P,PN),
                          invertir_bueno(PN,PPT,PI).

%ii(P,PI) :- top(P,T),insertar().


