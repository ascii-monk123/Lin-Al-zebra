function [y_out] = laff_axpy(x,y,alpha)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
x_valid = check_vect(x);
y_valid=check_vect(y);

if ~x_valid || ~y_valid
error("Error");
end

if ~isscalar(alpha)
error("Error");
end

sz_x = size(x);

sz_y=size(y);
%if both vectors have different dimensions error
if sz_x(1)==1
    if sz_x(2)~=sz_y(1) && sz_x(2)~=sz_y(2)
    error("Error");

    %else if one dimension same
    elseif sz_x(2)==sz_y(1)
        x=x';
        sz_x=size(x);
    end
end

%if both vectors have different dimensions error
if sz_x(2)==1
    if sz_x(1)~=sz_y(1) && sz_x(1)~=sz_y(2)
    error("Error");

    %else if one dimension same
    elseif sz_x(1)==sz_y(2)
        x=x';
        sz_x=size(x);
    end
end

y_out=zeros(sz_y);
sz=0;
%if both vectors have same size proceed
if sz_x(1) == sz_y(1) && sz_x(2) == sz_y(2)
    if sz_x(1)~=1
        sz=sz_x(1);
    

else
    sz=sz_x(2);

end
    for i=1:sz
    y_out(i)=alpha*x(i)+y(i);
    end
end
end