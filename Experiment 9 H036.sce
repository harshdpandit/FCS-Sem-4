//Experiment 9: To find the stabillity using Nyquist plot for Given Transfer Function
//Name: Harsh Pandit
//Roll No:H036
//Date of Experiment:14/03/2022
clc
close
clear
num=1;//Define the numerator
den=poly([0 -1 -2],"s","roots");//Define the denominator
sl=syslin('c',num,den);//Define G(s)
disp(sl)
evans(sl,100)//plots the root locus for a maximum gain of 100
sgrid()
 

