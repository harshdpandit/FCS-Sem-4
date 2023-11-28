//Name: Harsh Pandit
//Roll Number: H036
//Date: 13/12/21
//Exp_01_H036_13/12/2021
//Experiment_01: Write a program to find transfer function of a given system.

clc
clear
close

s=poly(0,'s')//defines s variable, poly(power of variable you want, 'variable name')
num=[s+5]//numerator, it is in rectangle as it is standard format
disp(num)//displays the variable
den=[s^2+3*s+2]
disp(den)

sys=syslin('c',num,den)//creates linear system('c'stands for continous (we can also make discrete functions),numerator,denominator)
disp(sys)
