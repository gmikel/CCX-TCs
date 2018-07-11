//This script generates the geometry required for Example 3.7 in "A First Course in the Finite Element Method," 5ed. by Logan.

//Variables
L_b1 = 5; //Length of bar element 1
L_b2 = 10; //Length of bar element 2
L_s1 = 1; //Length of spring
cl = L_b2; //Constrain each portion of the mesh to 1 elm
theta = Pi/4; //45 deg.

//Define the node locations
Point(1) = {0,0,0,cl};
Point(2) = {-L_b1*Cos(theta),L_b1*Sin(theta),0,cl};
Point(3) = {-L_b2,0,0,cl};
Point(4) = {0,-L_s1,0,cl};

//Define the construction lines for the elements
Line(1) = {1,2}; //Bar 1
Line(2) = {1,3}; //Bar 2
Line(3) = {1,4}; //Spring 1

//Define the physical groups
Physical Point("LD APP PT",1) = {1};
Physical Point("PND SPRTS",2) = {2,3};
Physical Point("FXD",3) = {4};

Physical Line("BARS",4) = {1,2};
Physical Line("SPRNG",5) = {3};
