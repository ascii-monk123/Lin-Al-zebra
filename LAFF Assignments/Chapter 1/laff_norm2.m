function [y_out] = laff_norm2(x)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
x_valid = check_vect(x);

if ~x_valid
error("Error");
end

dot = laff_dot(x,x);

y_out=sqrt(dot);
end