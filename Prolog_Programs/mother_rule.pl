/* Facts */

male(kunal).
male(arjun).
male(karan).

female(shobha).
female(sonal).

parent(shobha,kunal).
parent(shobha,arjun).
parent(sonal,karan).

/* Rules */
mother(X,Y):-
parent(X,Y),
female(X).
