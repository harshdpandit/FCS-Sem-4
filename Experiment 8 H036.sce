//Experiment 8: To find the stabillity using Nyquist plot for Given Transfer Function
//Name: Harsh Pandit
//Roll No:H036
//Date of Experiment:14/03/2022
clc

close
clear
num=poly([10],"s","coeff");//Define the numerator
den=poly([2 3 1],"s","coeff");//Define the denominator
sl=syslin('c',num,den);//Define G(s)
disp(sl)
nyquist(sl)//Plot the Nyquist Plot for G(s)
