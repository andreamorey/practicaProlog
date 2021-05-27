insertar(E,L,[E|L]).
insertar(E,[X|Y],[X|Z]):-insertar(E,Y,Z).

permutacio([],[]).
permutacio([X|Y],Z):-
permutacio(Y,L), insertar(X,L,Z).

diferents([]).
diferents([A|L]):-not(member(A,L)), diferents(L).

primer(E,[E,_,_,_]). 
primer(E,[-,E,_,_]).

darrer(E,[_,_,_,E]).
darrer(E,[_,_,E,-]).

/*
L4NEW = [a,b,c,a]
L2 = [c,a,a,b]
R = F1 = [a,b,-,c]
*/
comprobacioLista([],[],[]).
comprobacioLista([E1|L1], [E2|L2],[R|R2]):- 

primer(E1,R),
darrer(E2,R),
comprobacioLista(L1,L2,R2).  

lletres(L1, L2, L3, L4) :-

L1 = [L11, L12, L13, L14],
L2 = [L21, L22, L23, L24],
L3 = [L31, L32, L33, L34],
L4 = [L41, L42, L43, L44],

permutacio([a,b,c,-],F1),
permutacio([a,b,c,-],F2),
permutacio([a,b,c,-],F3),
permutacio([a,b,c,-],F4),


F1 = [C11, C12, C13, C14],
F2 = [C21, C22, C23, C24],
F3 = [C31, C32, C33, C34],
F4 = [C41, C42, C43, C44],
F  = [F1, F2, F3, F4],

C1 = [C11, C21, C31, C41],
C2 = [C12, C22, C32, C42],
C3 = [C13, C23, C33, C43],
C4 = [C14, C24, C34, C44],
C  = [C1, C2, C3, C4],

diferents(C1),
diferents(C2),
diferents(C3),
diferents(C4),

reverse(L4,L4NEW),
comprobacioLista(L4NEW,L2, F),
reverse(L3,L3NEW),
comprobacioLista(L1,L3NEW, C),


write("   "), write(L11), write(" "), write(L12), write(" "), write(L13), write(" "), write(L14), nl,
write(L44), write(" ["), write(C11), write(","), write(C12), write(","), write(C13), write(","), write(C14), write("] "), write(L21), nl,
write(L43), write(" ["), write(C21), write(","), write(C22), write(","), write(C23), write(","), write(C24), write("] "), write(L22), nl,
write(L42), write(" ["), write(C31), write(","), write(C32), write(","), write(C33), write(","), write(C34), write("] "), write(L23), nl,
write(L41), write(" ["), write(C41), write(","), write(C42), write(","), write(C43), write(","), write(C44), write("] "), write(L24), nl,
write("   "), write(L34), write(" "), write(L33), write(" "), write(L32), write(" "), write(L31),nl,nl,
fail.



/*
imprimir(L1,L2,L3,L4):-
write("   "),
top(L1),
middle(L2,L4),
write("   "),
bottom(L3).

top([]):-nl.
top([X|L]):-
write(X),
write(" "),
top(L).

bottom([]):-nl.
bottom([X|L]):-
bottom(L),
write(X),
write(" ").

darrer([X|Xs], Ys) :-                 % use auxiliary predicate ...
   darrer_prev(Xs, Ys, X).            % ... which lags behind by one item
% darrer([1,2,3,4], L)
% darrer_prev([2,3,4],L, 1)

darrer_prev([], [], _).
darrer_prev([2|3,4], [1], 1)
darrer_prev([3,4], [],2)

darrer_prev([], [], X):-write(X).
darrer_prev([X1|Xs], [X0|Ys], X0) :-  
   darrer_prev(Xs, Ys, X1).           % lag behind by one


middle([X1|L1],L2):-
darrer(L2,L2NEW),
write(" [_,_,_,_] "),
write(X1),
nl,
middle(L1,L2NEW).
*/