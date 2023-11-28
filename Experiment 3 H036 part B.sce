//Name: Harsh Pandit
//Roll Number: H036
//Date: 3/1/2022
//Exp_03_H036_3/1/2022
//Experiment_03 :To study transisent response for given system. 
clc
close
clear

s=%s
//('Enter the value of damping for undamped system')
z=0.5
num=1; //numerator for TF
den=36+2*z*s+s^2; //denominator for TF
TF= syslin('c',num,den)
disp(TF)
subplot(2,2,1)
t=0:0.1:10;
y1=csim('step',t,TF);
plot(t,y1,'r')
title('Underdamped system')
z=6
num=1; //numerator for TF
den=36+2*z*s+s^2; //denominator for TF
TF= syslin('c',num,den)
subplot(2,2,2)
y2=csim('step',t,TF);
plot(t,y2,'k')
title('Critically Damped')
z=20
num=1; //numerator for TF
den=36+2*z*s+s^2; //denominator for TF
TF= syslin('c',num,den)
subplot(2,2,3)
y3=csim('step',t,TF);
plot(t,y3,'g')
title('Over Damped')
z=0
num=1; //numerator for TF
den=36+2*z*s+s^2; //denominator for TF
TF= syslin('c',num,den)
subplot(2,2,4)
y4=csim('step',t,TF);
plot(t,y4,'m')
title('Undamped')
