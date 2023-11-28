//Experiment 10 : To develop the state space model for Given Transfer Function
//Name: Harsh Pandit
//Roll No:H036
//Date of Experiment:21/03/2022
clc
close
clear
num = poly([10 10],"s","coeff") //Defines the numerator of the transfer function
den = poly ([10 5 6 1],"s","coeff") //Defines the denominator of the transfer function
sl= syslin('c',num,den) //Defines the transfer function
disp(sl)
sys = tf2ss(sl) //Converts transfer function to state space model
disp(sys)
