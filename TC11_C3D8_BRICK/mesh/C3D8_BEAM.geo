//+
Point(1) = {-1, -1, 0, 1.0};
//+
Point(2) = {-1, 1, 0, 1.0};
//+
Point(3) = {1, -1, 0, 1.0};
//+
Point(4) = {1, 1, 0, 1.0};
//+
Line(1) = {2, 1};
//+
Line(2) = {2, 4};
//+
Line(3) = {1, 3};
//+
Line(4) = {3, 4};
//+
Line Loop(1) = {1, 3, 4, -2};
//+
Surface(1) = {1};
//+
//Extrude {0, 0, 10} {
//  Surface{1}; 
//}
//+
//Physical Line("FIXED_BOUNDARY") = {2, 4, 3, 1};
//+
//Physical Line("LOAD_APPLICATION") = {9};
//+
//Physical Volume("BEAM") = {1};

//+
Extrude {0, 0, 50} {
  Surface{1}; Layers{50}; Recombine;
}
//+
Physical Surface("FIXED_BC") = {1};
//+
Physical Line("LOAD_LINE") = {6};
//+
Physical Volume("BEAM") = {1};
