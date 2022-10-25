%consider a matrix with 3 rows 2 columns
A=[1 2;3 7;0 0];
display(A);

%this is our current basis vector

%taking an arbitrary b vector out of this space
b=[7;9;16];
display(b);

%transposing A
A_t=transpose(A);

%now, the equation is 
%A_t(b-Ax_hat)=0

%this gives
%A_t*A*x_hat = A_t*b
%X_hat = (A_t*A)^-1*A_t*b

X_hat = inv(A_t*A)*(A_t*b)

%this is the closest approximation to the solution for X;
% we project b vector on the subspace of the A matrix and then find the
% solution.

%Now, for projection matrix
%p=A(A_t*A)^-1*A_t

P = A*inv(A_t*A)*(A_t)

%which is correct as we have to make the third component 0 to get a
%projection onto the xy plane.
%Properties of P:-
%(a) P_t = P

transpose(P)

%(b) P^2 = P
transpose(P)*P
