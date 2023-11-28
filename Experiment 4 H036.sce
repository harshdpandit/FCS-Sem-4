//Experiment 4: To perform a time domain analysis for a given system.
//Name: Harsh Pandit
//Roll Number: H036
//Date: 24/1/2022
//Exp_04_H036_24/1/2022

clc 
close
clear
num=poly([12.811 18 6.3223],"s","coeff");//Defines the numerator of transfer function
den=poly([12.811 18 11.3223 6 1],"s","coeff")//Defines the denominator of transfer function
s1=syslin('c',num,den);//Defines the transfer function
disp(s1)
t=[0:0.001:25];//the time of simulation is from 0 to 25 secs
plot2d(t,csim('step',t,s1))//It plots the step response of the transfer function on s1
xgrid(5,1,7)
xtitle('Time Domain Analysis','Time(sec)','C(t)')

