find_final(A,[A]).
find_final(A,[B|C]):- find_final(A,C).
