#Purpose: To utilized closed-form solutions to determine the accuracy of the CalculiX solution for T3D2 elements.
#Date: July 9th, 2018
#Programmer: Garrett M. Kelley

#Define the variables
L = 100 #Beam length
h = 10 #Beam height
w = 5 #Beam width
P = 500
E = 29e6 #Young's Modulus
I = h**3*w/12

#Calculate the displacement
delta = P*L**3/(3*E*I)

#Print the output
print("The resulting vertical displacement for the B32R element is: " + str(delta) + " in.")

#The FEM predicts:
delta_fem = 1.2893e-2
p_delta = (delta_fem - delta)/delta*100

print("The percent error is: " + str(p_delta) + "%")
