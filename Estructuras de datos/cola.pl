% cola
crear([]).
encolar(E,[],[E]).
encolar(E,[F|C],[F,Cmod]) :- encolar(E,C,Cmod).
frente([F|C],F).

desencolar([],[]).
desencolar([F|C],C).

largo([],0).
largo([F|C],L) :- largo(C,R), L is R + 1.

esvacia([],1).
esvacia([F|C],0).

invertir([],[]).
invertir(C,CA,CI) :- frente(C,F), encolar(F,CA,CT),desencolar(C,CN),
                     write('\nnueva cola: '),display(CN),
                     write('\ntemporal: '),display(CT),nl,
                     invertir(CN,CT,CI).
