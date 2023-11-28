//Experiment 5: To use a block reduction technique to get the equivalent system.
//This is a typical case where for given block diagram where h3 and h4 form a loop which is in series to h1 and h3 is negative feedback to combination.
//Name: Harsh Pandit
//Roll Number: H036
//Date: 10/1/2022
//Exp_05_H036_10/1/2022

clc 
close
clear
s=poly(0,'s');
n1=2*s; //numerator of T.F
d1=3+s^2; //denominator of T.F
h1=syslin('c',n1,d1);
disp(h1)
n2=2; 
d2=4+s;
h2=syslin('c',n2,d2);
disp(h2)
n3=4; 
d3=6+s;
h3=syslin('c',n3/d3);

n4=s; 
d4=1+s*2;
h4=syslin('c',n4/d4);
h5=h3/.h4// /. is used for feedback 
disp(h5)
h6=h1*h5
h7=h6/.h3
disp(h7,"Reduced transfer function: ")
