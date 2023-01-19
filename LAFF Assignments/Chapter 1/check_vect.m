function [okay] = check_vect(x)
%UNTITLED4 Summary of this function goes here
sz_x = size(x);
okay=true;
%check if only one dimension is 1
if sz_x(1)==1 && sz_x(2)~=1
    %do something
    if sz_x(2)==0
        okay=false;
    end

elseif sz_x(2) == 1 && sz_x(1)~=1
    if sz_x(1)==0
        okay=false;
    end

    sz = sz_x(1);

else
    okay=false;
end
end