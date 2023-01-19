%dot product routine

x=[1,2,3];

y=[10,20,30];

y_out=laff_dot(x,y)


%error
%y_out=laff_dot(zeros(10,20), y);

%not same size error

x=[10;20;30];
%y_out=laff_dot(x,y)