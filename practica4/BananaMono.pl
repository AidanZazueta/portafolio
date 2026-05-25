% Sesion 3: Torres de Hanoi
% Zazueta Medrano Aidan

move(state(middle,onbox,middle,hasnot), % Estado inicial
    grasp,   % accion 
    state(middle,onbox,middle,has)). % Estado final

move(state(P,onfloor,P,H),   climb,   state(P,onbox,P,H)).

move(state(P1,onfloor,P1,H),   drag(P1,P2),   state(P2,onfloor,P2,H)).

move(state(P1,onfloor,B,H),   walk(P1,P2),   state(P2,onfloor,B,H)).

canget(state(_,_,_,has)). % Verifica si el mono tiene la banana

canget(State1) :- % Si no tiene la banana
    move(State1,_,State2), % Realiza una accion
    canget(State2). % Llamada recursiva en base al estado final