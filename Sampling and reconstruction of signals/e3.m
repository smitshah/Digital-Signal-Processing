%% Expriment No: 3

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 30-07-19
%}

clc
clear all
close all

%% Q1. Write MATLAB to sample the CT signal, x(t)=cos(2*pi*50t)+cos(2*pi*100t)+cos(2*pi*150t) for Fs<2Fm, Fs=2Fm and Fs>2Fm. Plot the original CT signal and sampled signal for all cases in same figure.

tf=0.04;
t=0:0.0001:tf;
x=cos(2*pi*50*t)+cos(2*pi*100*t)+cos(2*pi*150*t);
figure
subplot(2,2,1)
plot(t,x)
title('Original x(t)')
xlabel('t')
ylabel('x(t)')

% Case1
Fs1=225;
n1=0:(tf*Fs1);
xn1=cos(2*pi*50*(n1/Fs1))+cos(2*pi*100*(n1/Fs1))+cos(2*pi*150*(n1/Fs1));
subplot(2,2,2)
stem(n1, xn1)
hold on
plot(n1, xn1)
title('x(n) with Fs<2Fm')
xlabel('n1')
ylabel('xn1')

% Case2
Fs2=300;
n2=0:(tf*Fs2);
xn2=cos(2*pi*50*(n2/Fs2))+cos(2*pi*100*(n2/Fs2))+cos(2*pi*150*(n2/Fs2));
subplot(2,2,3)
stem(n2, xn2)
hold on
plot(n2, xn2)
title('x(n) with Fs=2Fm')
xlabel('n2')
ylabel('xn2')

% Case3
Fs3=3000;
n3=0:(tf*Fs3);
xn3=cos(2*pi*50*(n3/Fs3))+cos(2*pi*100*(n3/Fs3))+cos(2*pi*150*(n3/Fs3));
subplot(2,2,4)
stem(n3, xn3)
hold on
plot(n3, xn3)
title('x(n) with Fs>2Fm')
xlabel('n3')
ylabel('xn3')

%% Observation

%{
    In this experiment, we observed that as we increases the value of Fs,
    the possibility of aliasing occurs. As we see that the value becomes
    Fs>2Fm, the aliasing occurs and we don't get proper output.
%}
