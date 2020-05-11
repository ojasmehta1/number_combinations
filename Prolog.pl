%Source: https://rosettacode.org/wiki/Combinations#Prolog
% combination(K,L,C) :- C is a list of K distinct elements
% chosen from the list L
combination(0,_,[]). % takes 0, a space, and a simple list
combination(K,L,[X|Xs]) :- K > 0,% takes K, L, and a list of X or Xs 
el(X,L,R), K1 is K-1, combination(K1,R,Xs).% takes in X,L, and R; Sets K1 to K-1, calls combination with K1, R, and Xs as parameters

el(X,[X|L],L).% takes X, a list of X or L values, and L
el(X,[_|L],R) :- el(X,L,R).% takes X, a list of spaces or L values, and R

