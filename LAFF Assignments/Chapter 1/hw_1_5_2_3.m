%developing a axpy function

x=[1,2,3];

y=[10,20,30];

alpha=10;

y_out = laff_axpy(x,y, alpha)

%check if one dim diff
x=[1;2;3];

y_out = laff_axpy(x,y, alpha)


%check if dim invalid

x=zeros(10,20);

%y_out = laff_axpy(x,y, alpha)

y=zeros(20,30);
x=[10,22];
%y_out = laff_axpy(x,y, alpha)

