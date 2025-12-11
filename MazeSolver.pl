%Darren Fernandes. This will be my code for Project 2

find_exit(Maze, Actions) :-
    find_start(Maze, StartCoords),
    solve(Maze, StartCoords, [StartCoords], Actions).

%the first function I want to make is something to see waht the value of a cell is
cell_value(Maze, (Row, Column), CellType) :-
    nth0(Row, Maze, RowList),
    nth0(Column, RowList, CellType).

%now that I have a way to get the value of the cell
%I can get the start value
find_start(Maze, (Row, Column)) :-
    once((
        nth0(Row, Maze, RowList),
        nth0(Column, RowList, s))).

%move should have 4 functions, force a move up, down, left and right
move((R, C), up, (NewR, C)) :-
    NewR is R - 1.

move((R, C), down, (NewR, C)) :-
    NewR is R + 1.

move((R, C), left, (R, NewC)) :-
    NewC is C - 1.

move((R, C), right, (R, NewC)) :-
    NewC is C + 1.

%base case, the cell has the value 'e'
solve(Maze, CurCoords, _Visited, []) :-
    cell_value(Maze, CurCoords, e).

%recursive case, move it, then check if the value is a wall or if we already visited it, and the call the recursive case adding the current coordinates to the visited case.
solve(Maze, CurCoords, Visited, [Direction | Rest]) :-
    move(CurCoords, Direction, NextCoords),
    cell_value(Maze, NextCoords, Type),
    Type \= w,
    \+ member(NextCoords, Visited),
    solve(Maze, NextCoords, [NextCoords | Visited], Rest).