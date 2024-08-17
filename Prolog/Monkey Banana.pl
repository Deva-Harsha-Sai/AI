% Monkey and Banana Problem
% Facts
at(monkey, room1).
at(banana, room2).
at(chair, room2).
height(monkey, short).
height(banana, high).
height(chair, medium).

% Rules
can_get_banana(Monkey, Banana) :-
    at(Monkey, room2),
    at(Banana, room2),
    at(chair, room2),
    height(Monkey, short),
    height(Banana, high),
    height(chair, medium).

% Queries
% can_get_banana(monkey, banana).
