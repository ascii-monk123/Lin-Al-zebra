%developing a scaling function

x=[1;2;3];

x_out=laff_scale(x, 5);

disp(x_out);


%checking for row vector

x=[1,2,3];

x_out=laff_scale(x, 10);

disp(x_out);


%error cases
%laff_scale(zeros(10,20), 10);

%laff_scale(zeros(10,1), zeros(10));