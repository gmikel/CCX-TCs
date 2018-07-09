#Purpose: To utilized closed-form solutions to determine the accuracy of the CalculiX solution for T3D2 elements.
#Date: July 9th, 2018
#Programmer: Garrett M. Kelley

#Define the variables
L = 1 #Beam length
A = 1 #Cross-sectional area
P = 100 #Applied load
E = 28e6 #Young's Modulus

#Calculate the displacement
delta = P*L/(A*E)

#Print the output
print("The resulting axial displacement for the T3D2 element is: " + str(delta) + " in.")
