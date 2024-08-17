% Simplified TSP using brute force search for a small number of cities
% Distance between cities
distance(a, b, 10).
distance(a, c, 15).
distance(a, d, 20).
distance(b, c, 35).
distance(b, d, 25).
distance(c, d, 30).

% Symmetric distances
distance(X, Y, D) :- distance(Y, X, D).

% Calculate the total distance of a path
path_distance([City], 0).
path_distance([City1, City2 | Rest], TotalDistance) :-
    distance(City1, City2, D),
    path_distance([City2 | Rest], RestDistance),
    TotalDistance is D + RestDistance.

% Find all permutations of cities and calculate their distances
tsp(Start, Path, Distance) :-
    findall(P, permutation([a, b, c, d], P), Paths),
    member([Start | Rest], Paths),
    append([Start | Rest], [Start], Path),
    path_distance(Path, Distance).

% Query to find the shortest path
% tsp(a, Path, Distance).
