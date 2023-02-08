A = [1,2,3; 4, 5, 6; 7,8,9];


m = size(A, 1);
n = size(A, 2);

B = zeros(n, m);

B_out = Transpose_unb(A, B);
disp(B_out);

B_out = Transpose_unb_alt(A, B);

disp(B_out);