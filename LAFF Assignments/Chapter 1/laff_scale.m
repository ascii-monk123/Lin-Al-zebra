function [x_out] = laff_scale(x, alpha)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

%size of x
sz_x = size(x);

x_out = zeros(sz_x);
sz=0;

%check if only one dimension is 1
if sz_x(1)==1 && sz_x(2)~=1
    %do something
    if sz_x(2)==0
        error("Error");
    end

    sz=sz_x(2);


elseif sz_x(2) == 1 && sz_x(1)~=1
    if sz_x(1)==0
        error("Error");
    end

    sz = sz_x(1);

    else
    error("Error");
end

if ~isscalar(alpha)
 error("Error");
end

%make new vector

for i=1:sz
    x_out(i)=alpha*x(i);
end
end