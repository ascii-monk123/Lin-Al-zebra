%Lower to A
A = [1,0,0;2,3,0;4,5,6];
disp(A);

A_out=Symmetrize_from_lower_triangular_unb(A);


disp(A_out);


%Upper to A;

A = [1,2,4; ,0, 3, 5; 0,0, 6];

disp(A);

A_out = Symmetrize_from_upper_triangular_unb(A);

disp(A_out);