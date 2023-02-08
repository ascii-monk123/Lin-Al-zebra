A=[1,2,3; 4,5,6; 7,8,9];

%upper triangular
A_out = Set_to_upper_triangular_unb(A);

disp(A_out);

%strictly upper triangular

A_out = Set_to_strictly_upper_triangular_unb(A);

disp(A_out);


%unit upper triangular
A_out = Set_to_unit_upper_triangular_unb(A);

disp(A_out);


%strictly lower triangular
A_out = Set_to_strictly_lower_triangular_unb(A);

disp(A_out);

%unit lower triangular
A_out = Set_to_unit_lower_triangular_unb(A);

disp(A_out);