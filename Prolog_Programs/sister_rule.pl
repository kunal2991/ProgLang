/* Facts */

male(kunal).
male(karan).
male(arjun).


female(shobha).
female(sonal).
female(purva).
female(aditi).
female(namrata).

parent(shobha,kunal).
parent(sonal,karan).
parent(shobha,purva).
parent(sonal,namrata).
parent(sonal,aditi).
parent(shobha,arjun).

/* Rules */
sibling(X,Y):-
parent(A,X),
parent(A,Y),
not(X=Y).

sister(X,Y):-
sibling(X,Y),
female(X).
