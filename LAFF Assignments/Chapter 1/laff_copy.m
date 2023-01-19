function [y_out] = laff_copy(x,y)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
sz_x = size(x);
sz_y = size(y);

y_out = zeros(sz_y);

sz=0;
%check if only one dimension is 1
if sz_x(1)==1 && sz_x(2)~=1
    %do something
    if sz_x(2)==0
        error("Incorrect input");
    end

    sz=sz_x(2);


elseif sz_x(2) == 1 && sz_x(1)~=1
    if sz_x(1)==0
        error("Incorrect input");
    end

    sz = sz_x(1);

    else
    error("Incorrect Input");
end

if sz_y(1)==1 && sz_y(2)~=1
    %do something
    if sz_y(2)==0
        error("Incorrect input");
    end

elseif sz_y(2) == 1 && sz_y(1)~=1
    if sz_y(1)==0
        error("Incorrect input");
    end

else
    error("Incorrect Input");
end

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

%if both vectors have same size proceed
if sz_x(1) == sz_y(1) && sz_x(2) == sz_y(2)
    for i=1:sz
    y_out(i)=x(i);
    end
end

end