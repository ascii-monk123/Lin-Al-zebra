function [y_out] = laff_dot(x,y)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
x_valid=check_vect(x);
y_valid=check_vect(y);

if ~x_valid || ~y_valid
error("Error")
end

sz_x=size(x);
sz_y=size(y);

if sz_x(1)~=sz_y(1) || sz_x(2)~=sz_y(2)
   error("Error");
end


x=x';

if sz_y(1)~=1
sz=sz_y(1);

else
    sz=sz_y(2);
end

y_out=0;

for i=1:sz
    y_out=y_out+(x(i)*y(i));
end
end