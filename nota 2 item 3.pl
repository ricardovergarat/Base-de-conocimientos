% tratar de resolver el problema de los numero primos

crear([]).
el_push(E,L,[E|L]).
el_pop([E|L],L).
top([E|L],E).
sucesor(N,S) :- S is N + 1.
antecesor(N,A) :- A is N - 1.
resto(A,B,C) :- C is mod(A,B).
nada(LI,LI).
inicializar(X,A,Y,B) :- X is A, Y is B.

actualizar(LI,D,N,C,NC,LF) :- D == 1,el_push(N,LI,LF),sucesor(C,C1),NC is C1,!;
                              D == 0,nada(LI,LF),NC is C + 0 .

regresiva(O,N,D) :-  N == 1, D is 1,! ;resto(O,N,R),
                    ( (R == 0,D is 0,!); antecesor(N,N2),regresiva(O,N2,D) ) .

return_lista(LI,C,N,T,LF) :- C == T,nada(LI,LF),!;
                             antecesor(N,A),
                             regresiva(N,A,D),
                             actualizar(LI,D,N,C,C2,LT),
                             sucesor(N,N2),
                             return_lista(LT,C2,N2,T,LF).

invertir(LI,LP,LF) :- (LP == [], nada(LI,LF),!)
                               ;
                      top(LP,T),
                      el_push(T,LI,LT),
                      el_pop(LP,LPT),
                      invertir(LT,LPT,LF).

error(I,NP) :- (I >= NP; I =< -1),write('\nEse incide no existe').

mostrar(I,C,L) :- C == I, top(L,T),write('\n'),display(T),!
                                     ;
                          el_pop(L,LN),sucesor(C,C2),mostrar(I,C2,LN).

mostrar_indice(I,NP,L) :- error(I,NP) ; C is 0,mostrar(I,C,L).

primo(NP,I) :- inicializar(C,0,N,2),
             crear(L),
             return_lista(L,C,N,NP,LF),
             invertir(L,LF,LR),display(LR),
             mostrar_indice(I,NP,LR).






