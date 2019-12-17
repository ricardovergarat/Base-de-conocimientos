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

actualizar(LI,D,N,C,NC,LF) :- ( D == 1,el_push(N,LI,LF),sucesor(C,C1),NC is C1,! )                                                  ;
                              ( D == 0,nada(LI,LF),NC is C + 0 ).

regresiva(O,N,D) :- ( N == 1, D is 1,! );
                     resto(O,N,R),
                    ( (R == 0,D is 0,!);antecesor(N,N2),regresiva(O,N2,D) ) .

return_lista(LI,C,N,T,LF) :- C == T,nada(LI,LF),!;
                             antecesor(N,A),
                             %write('\nNumero Evaluando: '),display(N),
                             regresiva(N,A,D),
                             %write('\nDesicion: '),display(D),
                             actualizar(LI,D,N,C,C2,LT),
                             %write('\nLa nueva lista es: '),display(LT),
                             %write('\nLen(lista): '),display(C2),
                             sucesor(N,N2),
                             return_lista(LT,C2,N2,T,LF).

invertir(LI,LP,C,NP,LF) :- C == NP,nada(LI,LF),
                           write('\nL1: '),display(LI),
                           write('\nLP: '),display(LP),
                           write('\nC: '),display(C),
                           write('\nNP: '),display(NP),
                           write('end');
                           top(LP,T),el_push(T,LI,LT),el_pop(LP,LPT),
                           sucesor(C,C2),invertir(LT,LPT,C2,NP,LF).

primo(NP) :- inicializar(C,0,N,2),crear(L),return_lista(L,C,N,NP,LF),display(LF),
             invertir(L,LF,C,NP,LF).

ag(LI,LP,C,NP,LF):- C == NP,nada(LI,LF),display(LF),!.


