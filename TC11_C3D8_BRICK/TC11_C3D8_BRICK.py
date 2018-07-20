#Purpose: To utilized closed-form solutions to determine the accuracy of the CalculiX solution for T3D2 elements.
#Date: July 9th, 2018
#Programmer: Garrett M. Kelley

#Define the variables
L = 50 #Beam length
h = 2
w = 2
I = h**3*w/12
P = 100 #Applied load
E = 28e6 #Young's Modulus

#Calculate the displacement
delta = P*L**3/(3*E*I)

#Print the output
print("The resulting vertical displacement for the C3D8 element beam is: " + str(delta) + " in.")
