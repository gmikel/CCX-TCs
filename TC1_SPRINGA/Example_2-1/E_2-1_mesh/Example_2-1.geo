//This GMSH script generates the geometry for Example 2.1 in "A First Course in the Finite Element Method," 5 ed. by Logan.

//Variables
L = 1; //Spring length
cl = 1; //Characteristic element length

//Define Points
Point(1) = {0,0,0,cl}; //Boundary 1 "Node 1"
Point(2) = {L,0,0,cl}; //"Node 3"
Point(3) = {2*L,0,0,cl}; //"Node 4"
Point(4) = {3*L,0,0,cl}; //Boundary 2 "Node 2"

//Define Lines
Line(1) = {1,2}; //Spring 1
Line(2) = {2,3}; //Spring 2
Line(3) = {3,4}; //Spring 3

//Define groups for BC + Load Application
//+
Physical Point("FIXED NODES") = {1, 4};
//+
Physical Point("LOADED NODE") = {3};
//+
Physical Curve("SPRINGS") = {1, 2, 3};
