%% Expriment No: 2

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 23-07-19
%}

clc
clear all
close all

%% 1. Plot the response for h(n)=3 del(n)- del(n-1)-2 del(n-2)+3 del(n-3)+ del(n-4) for input x(n)=cos(n), n=0: 2 without using in-built function

n=0:1:2;
h=[3 -1 -2 3 1];
figure
stem(0:length(h)-1,h)
xlabel('n')
ylabel('h')
title('h(n)')

x=cos(n);
figure
stem(n,x)
xlabel('n')
ylabel('X')
title('Cos(n)')

m = length(x);
n = length(h);
X = [x,zeros(1,n)];
H = [h,zeros(1,m)];
for i = 1:n+m-1
    Y(i)=0;
    for j=1:m
        if(i-j+1>0)
            Y(i)=Y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
disp(Y);
figure
stem(0:length(Y)-1,Y)
xlabel('n')
ylabel('Y')
title('Impulse Response of Y')

%% 2. Plot the response for x(n) when h1(n)=3 del(n)- del(n-1)-2 del(n-2) and h2(n)=3 del(n-3)+ del(n-4) are connected in series using in-built function

h1=[3 -1 -2 0 0];
figure
stem(0:length(h1)-1,h1)
xlabel('n')
ylabel('h1')
title('h1(n)')

h2=[0 0 0 3 1];
figure
stem(0:length(h2)-1,h2)
xlabel('n')
ylabel('h2')
title('h2(n)')

h3=conv(h1,h2);
Y1=conv(h3,x);
figure 
stem(0:length(Y1)-1,Y1)
xlabel('n')
ylabel('Y1')
title('Impulse Response of Y1')

%% 3. Plot the response for x(n) when h1(n)=3 del(n)- del(n-1)-2 del(n-2) and h2(n)=3 del(n-3)+ del(n-4) are connected in parallel using in-built function

h4= h1+h2;
Y2=conv(h4,x);
figure
stem(0:length(Y2)-1,Y2)
xlabel('n')
ylabel('Y2')
title('Impulse Response of Y2')

%% Conclusion

%{
     In this experiment we have performed convolution between h(n) and x(n)
     without using in-built function, also plotted the response of that. After
     that we have plotted response for x(n) when two signals h1(n) and
     h2(n) are connected in series/cascade and when bothe are connected in
     parallel.
%}
