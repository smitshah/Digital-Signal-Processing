%% Expriment No: 1

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 16-07-19
%}

clc
clear all
close all

%% Q1. Define a vector nx to be the time indices -3<=n<=7 and where x(n)={0,0,0,2,0,1,-1,3,0,0,0}. Plot the DT sequence

nx=[-3:1:7];
x=[0 0 0 2 0 1 -1 3 0 0 0];
figure
stem(nx,x)
title('DT sequence of x(n)')
ylabel('x')
xlabel('nx')

%% Q2. Define vectors y1 through y2 to represent following DT signals. 

%1 y1(n)=x(n-2)
figure
nx1=nx+2;
y1=x;
subplot(2,2,1);
stem(nx1,y1);
title('discrete time signal y1')
ylabel('y1');
xlabel('ny1');

%2 y2(n)=x(n+1)
nx2=nx-1;
y2=x;
subplot(2,2,2);
stem(nx2,y2);
title('discrete time signal y2')
ylabel('y2');
xlabel('ny2');

%3 y3(n)=x(-n)
nx3=nx*(-1);
y3=x;
subplot(2,2,3);
stem(nx3,y3);
title('discrete time signal y3')
ylabel('y3');
xlabel('ny3');

%4 y4(n)=x(-n+1)
nx4=nx3+1;
y4=x;
subplot(2,2,4);
stem(nx4,y4);
title('discrete time signal y4')
ylabel('y4');
xlabel('ny4');

%% Q3. Generate plot of y1 to y4 and based on that state how the signal is related to original x(n)

 %{
    y1 signal is delayed by 2.

    y2 is advanced by 1.
 
    y3 is flipped.

    y4 is flipped and delayed by 1.
%}

%% Conclusion

%{
    In this experiment we have first defined a vector then ploted the DT
    sequence. Then we have ploted four different signals i.e. y1 to y4.
    After that we have compared that y1 to y4 with our original x(n).
%}
