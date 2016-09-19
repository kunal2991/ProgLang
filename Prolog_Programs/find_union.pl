find_union([],A,A).
find_union([A|B],C,D):- member(A,C),!,find_union(B,C,D).
find_union([A|B],C,[A|D]):- find_union(B,C,D).

/* Literal Translation : Function takes 2 lists as input. If A is a member of list C, then we CUT and then call the function again on the remaining elements.
And if not, then it proceeds with all elements except the first element */
