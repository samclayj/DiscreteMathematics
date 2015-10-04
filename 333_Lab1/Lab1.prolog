/*
---------------------------------------------------------------------
PROGRAM NAME: Lab 1, Prolog Practice
PROGRAMMER:   Samuel Jentsch
CLASS:        CSC 333, Spring 2014
INSTRUCTOR:   Dr. Strader
DATE STARTED: January 28, 2014
DUE DATE:     January 29, 2014
REFERENCES:   Dr. Strader: assignment information sheet
---------------------------------------------------------------------
*/

/*****Problem 1*****/

big(bear).
big(elephant).
small(cat).

brown(bear).
black(cat).
gray(elephant).

dark(Z) :- black(Z).
dark(Z) :- brown(Z).

/*****Problem 2*****/

/*Allow user to call my reverse with two parameters 
(List to be reversed and variable to hold list).*/
myreverse(ListToReverse, ReversedList) :- myreverse(ListToReverse, [], ReversedList).

/*Base case, empty list passed. Set PassedVar to the completed reversed list 
(TempList is the reversed list at the base case).*/
myreverse([], ReversedList, ReversedList).

/*Split the list to be reversed into the head or tail. 
TempList begins as an empty list and then
is concatenated with the Head of the list to be reversed. 
Adding the head of the list to be reversed to the temp list
results in the reversed version of the list in temp list.  
Passed var represents the variable that holds the reversed list
at the conclusion of the method.*/
myreverse([Head|Tail], TempList, PassedVar):-  myreverse(Tail, [Head|TempList], PassedVar). 

/*****Problem 3*****/

/*This method returns the last item in a list. It sets the last item to the variable Item.
The base case is Item and an empty list or Item and a list only containing one item 
(In this case Item is assigned to the last remaining item in the list, the last item).*/
getLast(Item, []).
getLast(Item, [Item]).

/*getLast recursively calls itself until the last item in the list is reached (only one item is left in the list). 
At this point the last item has been found and is assigned to the passed variable Item.*/
getLast(Item, [Head|Tail]) :- getLast(Item, Tail).
