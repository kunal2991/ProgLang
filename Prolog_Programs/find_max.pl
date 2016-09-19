find_max([A],A).
find_max([A|B],A):- find_max(B,C), A >= C.
find_max([A|B],D):- find_max(B,D), D > A.

