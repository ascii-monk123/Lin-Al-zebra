%sample orthogonal matrix
Q=(1/2)*[1 1 1 1; 1 -1 1 -1; 1 1 -1 -1; 1 -1 -1 1];

%projection matrix for orthogonal examples is given by
P=Q*Q';
display(P);
%yes the result is an identity matrix, so orthgonal matrix.

%suppose b vector which lies outside the column space of Q is [7 8 9 10]
%projection is given by
b=[7 8 9 10]';
p=P*b;

display(b);

%makes sense as the projection is identity. Orthogonal matrix spans entire
%4d space.(4 perpendicular vectors)

%properties verification
%p'=p

display(P');

%P^2 = P
display(P'*P);

%normal equation
%x_hat=Q'*b
x_hat=Q'*b;

display(x_hat);

display(Q*x_hat);

%estimated solution is perfect as the projection space is the entire 4d
%space.
