%% Expriment No: 5

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 26-08-19
%}

clc
clear all
close all

%% Q1. Write MATLAB program to find z-transform of given input sequence

syms n

% 1. x(n) = (1/4)^n
x1=(1/4).^n
X1=ztrans(x1)

% 2. x(n) = (2*((2)^n))+(4*((1/2)^n))
x2= (2*((2).^n))+(4*((1/2).^n))
X2=ztrans(x2)

%% Q2. Write MATLAB program to find inverse z-transform of the following

syms z

% 1. X(z) = (4*z)/((4*z)-1)
X3= (4.*z)/((4.*z)-1)
x3=iztrans(X3)

% 2. X(z) = ((2*z)/(z-2))+((2*z)/((z-(1/2))))
X4= ((2.*z)/(z-2))+((2.*z)/((z-(1/2))))
x4=iztrans(X4)

%% Q3. Write a program to sketch ploe-zero plot, impulse response and frequency response for the system described by the transfer function H(z)= (z^-1)/(1 - 0.25*(z^-1) - 0.375*(z^-2))

H=tf([0 1],[1 -0.25 -0.375],0.1,'variable','z^-1') % Sample Time =0.1 for DT and variable is z^-1

figure
impulse(H)

figure
b=[0 1];
a=[1 -0.25 -0.375];
freqz(b,a)

figure
pzmap(H)

% Comment On stability
%{
    The System is stable as both the poles as well as zero is inside the
    pole-zero plot(OR Cricle with unit radius).
%}

%% Conclusion
%{
    In this experiment we have done z-transform and inverse z-transform of
    given systems. After that we have ploted the pole-zero plot of given
    transfer function and saw the stability of the given function, we have
    also ploted the impulse response and frequency response of the same.
%}
