%developing a copy function

%row vectors
y=[10,20, 30];

x=[1, 2, 3];

y_out = laff_copy(x,y);

disp(y_out);

%different shapes
y=[10;20;30];

x=[1, 2, 3];

y_out=laff_copy(x, y);

disp(y_out);

% y is a row vector this time

y=[1,2,3];
x=[10;20;30];

y_out=laff_copy(x,y)

%x input weird
%x=zeros(10,20);
%y_out = laff_copy(x,y);

%y not a vectors
%y=zeros(20, 10);
%y_out=laff_copy(x,y);

%If both different size
x=[10;20;30;40];
y=[1,2,3];

%y_out = laff_copy(x, y);

x=[1;2;3];
y=[1,2];

%y_out=laff_copy(x,y);

