insertar(E,L,[E|L]).
insertar(E,[X|Y],[X|Z]):-insertar(E,Y,Z).

permutacio([],[]).
permutacio([X|Y],Z):-permutacio(Y,L), insertar(X,L,Z).


lletres(L1, L2, L3, L4) :-

L1=[L11,L12,L13, L14],
L2=[L21,L22,L23, L24],
L3=[L31,L32,L33, L34],
L4=[L41,L42,L43, L44],

write("   "), write(L11), write(" "), write(L12), write(" "), write(L13), write(" "), write(L14), nl,
write(L44), write(" "), write("[a,b,-,c]"), write("  "), write(L21), nl,
write(L43), write(" "), write("[b,c,a,-]"), write("  "), write(L22), nl,
write(L42), write(" "), write("[a,b,-,c]"), write("  "), write(L23), nl,
write(L41), write(" "), write("[-,a,c,b]"), write("  "), write(L24), nl,
write("   "), write(L34), write(" "), write(L33), write(" "), write(L32), write(" "), write(L31).




