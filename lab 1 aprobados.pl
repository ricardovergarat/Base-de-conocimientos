% quienes aprobaron el ramo
alumno(caro,3.3,4.5,4.2).
alumno(michael,6.5,2.7,2.5).
alumno(gabriel,3.0,5.5,3.7).

promedio(Nombre) :- alumno(Nombre,X,Y,Z),
                    P is (X + Y + Z)/3
                    ,display(P).
aprobado(Nombre) :- alumno(Nombre,X,Y,Z),P is (X + Y + Z)/3, P >= 4.0.
