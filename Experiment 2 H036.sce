//Name: Harsh Pandit
//Roll Number: H036
//Date: 20/12/21
//Exp_02_H036_20/12/2021
//Experiment_02 : Write a program to compare open loop and closed loop control system.
clc
close
clear

s=%s
num1=1
den1=s^2+0.2*s+36
OPTF=syslin('c',num1,den1)
disp(OPTF)
t=0:0.01:30
y1=csim('step',t,OPTF)//simulates transfer function, csim('(type of input)', time ,Transfer function)
subplot(2,1,1)
plot(t,y1)
xlabel('Time')
ylabel('Amplitide')
title('Open Loop Transfer Function Simulation')

num2=s
den2=s+1
CLTF=syslin('c',num2,den2)
disp(CLTF)
y2=csim('step',t,CLTF)
subplot(2,1,2)
plot(t,y2)
xlabel('Time')
ylabel('Amplitide')
title('Closed Loop Transfer Function Simulation')
