#Description: This worksheet performs the closed-form hand calculations to check the output of CalculiX *SPRING input deck (*ELEMENT TYPE=SPRINGA)
#Date: July 9th, 2018
#Programmer: Garrett M. Kelley

#Define the variables
k = 10 #Spring constant (lbf/in)
L = 1 #Spring length
F = 10 #Applied CLOAD (ABAQUS/CCX point load; lbf)

#Calculate the displacement via Hooke's Law
delta = F/k

#Print the output
print("The predicted output is: " + str(delta) + " in.")
