/* Andrea Morey Sanchez y Aisha Gandarova */

/* EJERCICIO 1*/

insertar(E,L,[E|L]).
insertar(E,[X|Y],[X|Z]):-insertar(E,Y,Z).

permutacion([],[]).
permutacion([X|Y],Z):-
permutacion(Y,L), insertar(X,L,Z).

diferentes([]).
diferentes([A|L]):-not(member(A,L)), diferentes(L).

/* Comprueba que sean iguales el elemento con el primer elemento de la lista, 
o con el segundo si el primero es un guión */
primero(E,[E,_,_,_]). 
primero(E,[-,E,_,_]).

/* Comprueba que sean iguales el elemento con el último elemento de la lista, 
o con el penúltimo si el último es un guión */
ultimo(E,[_,_,_,E]).
ultimo(E,[_,_,E,-]).

/* 
 * comprobacioLista(L1,L2,[R1,R2,R3,R4]).
 * comprueba las dos listas que le pasan con las columnas o filas
 * creadas a partir de las permutaciones.
 */
%si no quedan elementos:
comprobacionLista([],[],[]). 
comprobacionLista([E1|L1], [E2|L2],[R|R2]):- 
primero(E1,R),  
%comprobamos el primero elemento de la primera lista con el elemento de la lista 1 
ultimo(E2,R),
%comprobamos el último elemento de la primera lista con el elemento de la lista 2
comprobacionLista(L1,L2,R2).  

/* LLETRES */
lletres(L1, L2, L3, L4) :-

L1 = [L11, L12, L13, L14],
L2 = [L21, L22, L23, L24],
L3 = [L31, L32, L33, L34],
L4 = [L41, L42, L43, L44],

/* Creamos las filas a partir de las permutaciones */
permutacion([a,b,c,-],F1),
permutacion([a,b,c,-],F2),
permutacion([a,b,c,-],F3),
permutacion([a,b,c,-],F4),

/* Definimos cada elemento de las filas */
F1 = [C11, C12, C13, C14],
F2 = [C21, C22, C23, C24],
F3 = [C31, C32, C33, C34],
F4 = [C41, C42, C43, C44],
F  = [F1, F2, F3, F4], 

/* Definimos cada elemento de las columnas */
C1 = [C11, C21, C31, C41],
C2 = [C12, C22, C32, C42],
C3 = [C13, C23, C33, C43],
C4 = [C14, C24, C34, C44],
C  = [C1, C2, C3, C4],

/* Comprobamos que los valores sean diferentes por columnas */
diferentes(C1),
diferentes(C2),
diferentes(C3),
diferentes(C4),

/* Comprobamos si cumple la restricción de los laterales */
reverse(L4,L4R),
comprobacionLista(L4R,L2, F),
reverse(L3,L3R),
comprobacionLista(L1,L3R, C),

/* Imprime todas las posibles soluciones */
write("   "), write(L11), write(" "), write(L12), write(" "), write(L13), write(" "), write(L14), nl,
write(L44), write(" ["), write(C11), write(","), write(C12), write(","), write(C13), write(","), write(C14), write("] "), write(L21), nl,
write(L43), write(" ["), write(C21), write(","), write(C22), write(","), write(C23), write(","), write(C24), write("] "), write(L22), nl,
write(L42), write(" ["), write(C31), write(","), write(C32), write(","), write(C33), write(","), write(C34), write("] "), write(L23), nl,
write(L41), write(" ["), write(C41), write(","), write(C42), write(","), write(C43), write(","), write(C44), write("] "), write(L24), nl,
write("   "), write(L34), write(" "), write(L33), write(" "), write(L32), write(" "), write(L31),nl,nl,
fail.

/* EJERCICIO 2*/

/* Imprime los resultados de compta */
comptar:- asserta(comptador(0)), compta.
comptar:- write("Hi ha "),
comptador(X),
write(X), write(" resultats"),
retractall(comptador(_)).

/* Realiza todos los cálculos y suma 1 al contador cada vez que encuentra una solución */
compta:-

permutacion([a,b,c,-],F1),
permutacion([a,b,c,-],F2),
permutacion([a,b,c,-],F3),
permutacion([a,b,c,-],F4),

F1 = [C11, C12, C13, C14],
F2 = [C21, C22, C23, C24],
F3 = [C31, C32, C33, C34],
F4 = [C41, C42, C43, C44],

C1 = [C11, C21, C31, C41],
C2 = [C12, C22, C32, C42],
C3 = [C13, C23, C33, C43],
C4 = [C14, C24, C34, C44],

diferentes(C1),
diferentes(C2),
diferentes(C3),
diferentes(C4),

comptador(X), X1 is X+1,
retract(comptador(X)),
asserta(comptador(X1)),
fail.