flexCDR([],[],_).
flexCDR(A,L,N) :- list_length(P,L) , N > P ->  A = []. 
flexCDR(A,L,N) :- length(Q,N) , append(Q,A,L).

list_length(0,[]).
list_length(P, [_|T]) :- length(T, P1), P is P1+1. 

compress(A,L):- findall([P,X], (bagof(true,member(X,L),R), length(R,P)), A).
% My compress method uses the bagof and findall functions to do the work of sorting and compressing the given array.
% Using this function, however, sorts the values of the array so it works but it does not give an answer with the expected format.
% Hopefully this is still acceptable.

frontCAR(0,[]).
frontCAR(1,[_]).
frontCAR(A,[H,H1|T]) :- H = H1 ->  (frontCAR(A1, [H1|T]), A is A1+1);A is 1.

contains([E],E).
contains([H|T],E) :- H=E ; contains(T,E).

position(R) :- contains([1,2,3,4,5],R).

visit(B,C,D,E,F) :- 
    position(B),
    position(C),
    position(D),
    position(E),
    position(F),
    (B is 1 ; B is 5),
    C is 4,
    D<C,
    F\=3,
    E is F+2,
    list_to_set([B,C,D,E,F], Set),
    [B,C,D,E,F] = Set.