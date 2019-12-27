% intentar resolver la conjetura de collatz

resto(X,R) :-  Y  is mod(X,2), Y == 0, R is 0,
                write('\nentro: '), display(X)
                ;
                R is 1,write('\nentro: '), display(X).


cambiar_numero(E,R,S) :-( R == 0, S is E / 2 );( R == 1, S is E * 3 + 1 ).


collatz(N) :- N == 1;( resto(N,R), cambiar_numero(N,R,S), collatz(S)).




