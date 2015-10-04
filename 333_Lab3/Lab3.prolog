/*
---------------------------------------------------------------------
PROGRAM NAME: Lab 3, Prolog Problem
PROGRAMMER:   Samuel Jentsch
CLASS:        CSC 333, Spring 2014
INSTRUCTOR:   Dr. Strader
DATE STARTED: February 23, 2014
DUE DATE:     February 25, 2014
REFERENCES:   Dr. Strader: assignment information sheet
---------------------------------------------------------------------
*/

/*From the Prolog Class Handout*/
member(X, [X|Tail).
member(X, [Head|Tail) :- member(X, Tail).

/****List Intersection*****/
%If the first set is empty (or the second set), there is no intersection.
list_intersection([],S2,[]).
%If H1 (member of first set) is a member of the second set S2, add it to the
%intersection set.
list_intersection([H1|T1],S2,[H1|T3]) :- member(H1,S2), intersection(T1,S2,T3).
%If H1 (member of first set) is not a member of the second set S2, do not add
%it to the intersection set.
list_intersection([H1|T1],S2,S3) :- \+ member(H1,S2), intersection(T1,S2,S3).
