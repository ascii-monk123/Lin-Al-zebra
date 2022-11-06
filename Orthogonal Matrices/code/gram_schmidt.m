%I will compaer the inbuilt function to manual solutino

%manual solution
a=[1;1;1];
b=[1;0;2];

M=[1 1; 1 0; 1 2];

A=a;
B=b-((A'*b)/(A'*A))*A

display(B);

len_B=norm(B);
display(len_B);

len_A=norm(A);
display(len_A);

%calculating the orthonormal vectors
q1=A/len_A;
display(q1);
q2=B/len_B;
display(q2);

%calculate orthogonal matrix
Q=[q1 q2];
display(Q'*Q);
%YES ITS IDENTITY

%using inbuilt function
res = gram_schmidt_function(M);
display(res);
%correct in this case too.