%% Expriment No: 4

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 19-08-19
%}

clc
clear all
close all

x=[1 1 1 1];
n=0:3;

%% (a) y(n)= 0.5x(n)+x(n-1)+2x(n-2)

a1=[1];
b1=[0.5 1 2];
y1=filter(b1,a1,x);
figure
stem(n,y1)
xlabel('n')
ylabel('y1')
title('y(n)= 0.5x(n)+x(n-1)+2x(n-2)')
axis([-0.5 3.5 0 6])

%% (b) y(n)= 0.8y(n-1)+2x(n)

a2=[1 -0.8];
b2=[2];
y2=filter(b2,a2,x);
figure
stem(n,y2)
xlabel('n')
ylabel('y2')
title('y(n)= 0.8y(n-1)+2x(n)')
axis([-0.5 3.5 0 6])

%% (c) y(n)-0.8y(n-1)= 2x(n-1)

a3=[1 -0.8];
b3=[0 2];
y3=filter(b3,a3,x);
figure
stem(n,y3)
xlabel('n')
ylabel('y1')
title('y(n)-0.8y(n-1)= 2x(n-1)')
axis([-0.5 3.5 0 6])

%% (b.1) Calculated Theoretically the Total Response of y(n) for (b)

% y(n)= -8*(0.8^n)+10u(n)

c=-8*(0.8.^n)+10;
figure
stem(n,c)
xlabel('n')
ylabel('c')
title('Calculated Theoretically the total response of y(n) for (b)')
axis([-0.5 3.5 0 6])

%% Observation

%{
    In this experiment, we have ploted the total response of system using
    'filter' command. After that we have also theoretically calculated the equation for
    one of the case and then plotted the response of that and found that,
    both the response are same.
%}
