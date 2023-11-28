//Name: Harsh Pandit
//Roll Number: H036
//Date: 06/12/21
//Exp_00_H036_6/12/2021
//Experiment_01 : Write a program to plot sine wave
t= 0:0.001:5// t stands for time
f=1
x=sin(2*%pi*t)//% is used to for constant
subplot(4,1,1)//(rows,column,box number)
plot(t,x,'r')//plot(x axis, y axis, colour)
xlabel('Time')//labels x axis
ylabel('Amplitude')//labels y axis
title('PLot of sine wave')//title of graph

t= 0:0.001:5// t stands for time
r=cos(2*%pi*t)//% is used to for constant
subplot(4,1,2)
plot(t,r,'b')
xlabel('Time')
ylabel('Amplitude')
title('Plot of cosine wave')


n=0:0.01:10 // start : difference between 2 readings : stop
z=sin(2*%pi*f*n)
subplot(4,1,3)
plot2d3(n,z)//used to plot graph with discrete time / stem ploting(vertical plotting)
xlabel('number of samples')
ylabel('Plot of sine wave')
title('Plot of sine wave(discrete)')


n=0:0.01:10
z=cos(2*%pi*f*n)
subplot(4,1,4)
plot2d3(n,z)
xlabel('number of samples')
ylabel('Plot of cosine wave')
title('Plot of cosine wave(discrete)')
