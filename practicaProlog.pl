insertar(E,L,[E|L]).
insertar(E,[X|Y],[X|Z]):-insertar(E,Y,Z).

permutacio([],[]).
permutacio([X|Y],Z):-permutacio(Y,L), insertar(X,L,Z).

opciones = [a,b,c,-].

lletres(L1, L2, L3, L4) :-

L1 = [L11, L12, L13, L14],
L2 = [L21, L22, L23, L24],
L3 = [L31, L32, L33, L34],
L4 = [L41, L42, L43, L44],

permutacio(opciones,F1),
permutacio(opciones,F2),
permutacio(opciones,F3),
permutacio(opciones,F4),

F1 = [C11, C12, C13, C14],
F2 = [C21, C22, C23, C24],
F3 = [C31, C32, C33, C34],
F4 = [C41, C42, C43, C44],

C1 = [C11, C21, C31, C41],
C2 = [C12, C22, C32, C42],
C3 = [C13, C23, C33, C43],
C4 = [C14, C24, C34, C44],

write("   "), write(L11), write(" "), write(L12), write(" "), write(L13), write(" "), write(L14), nl,
write(L44), write(" ["), write(C11), write(","), write(C12), write(","), write(C13), write(","), write(C14), write("] "), write(L21), nl,
write(L43), write(" ["), write(C21), write(","), write(C22), write(","), write(C23), write(","), write(C24), write("] "), write(L22), nl,
write(L42), write(" ["), write(C31), write(","), write(C32), write(","), write(C33), write(","), write(C34), write("] "), write(L23), nl,
write(L41), write(" ["), write(C41), write(","), write(C42), write(","), write(C43), write(","), write(C44), write("] "), write(L24), nl,
write("   "), write(L34), write(" "), write(L33), write(" "), write(L32), write(" "), write(L31).




