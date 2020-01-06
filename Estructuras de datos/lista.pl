% lista como estrucutura de datos
crear([]).
agregar(E,[],[E]).
agregar(E,[I|L],[I|L|E]).
%agregar(E,[I|O],L) :-display(O),write('\n'), agregar(E,O,L).
quitar_final([L|E],E).

