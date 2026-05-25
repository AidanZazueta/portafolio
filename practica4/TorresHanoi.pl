% Sesion 3: Torres de Hanoi
% Zazueta Medrano Aidan

% Definicion del caso base:
torreshanoi(1, X, Y, _) :- 
    write("Mover el disco de "), 
    write(X), 
    write(" a "), 
    write(Y), 
    nl.

torreshanoi(N, X, Y, Z) :- 
    N > 1,
    M is N - 1,
    torreshanoi(M, X, Z, Y),
    torreshanoi(1, X, Y, _),
    torreshanoi(M, Z, Y, X).