%% Expriment No: 7

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 23-09-19
%}

clc
clear all
close all

%% A. Perform linear convolution of x(n)=[1 1 1 1] and y(n)=[1 1 1 1]. Plot the result using 'stem'.

x=[1 1 1 1];
y=[1 1 1 1];
k=conv(x,y)

n=0:(length(k)-1);
figure
stem(n,k)
xlabel('n')
ylabel('magnitude')
title('Linear Convolution of two sequnces')

%% B. Analytically perform the cyclic convolution of both the sequence.

circonv=cconv(x,y,length(x))
n1=0:(length(circonv)-1);
figure
stem(n1,circonv)
xlabel('n')
ylabel('magnitude')
title('Circulation Convolution of two sequnces')

%% C. Compute the DFT of x(n) and y(n). Store the result in vectors Xk and Yk. Now perform point-by-point product of Xk and Yk. Take the inverse DFT of Zk. Plot your result using 'stem'.

xk=fft(x)
yk=fft(y)
zk=xk.*yk
z=ifft(zk)
figure
stem(0:(length(z)-1),z)
xlabel('n')
ylabel('magnitude')
title('Circular convolution using DFT')

%% D. Increase the length of x(n) and y(n) by zero-padding the sequemce. First add zero to both the sequence. Repeat the steps in part(B). How many samples agree with the result in part(A).

x1=[1 1 1 1 0 0 0];
y1=[1 1 1 1 0 0 0];
circonv1=cconv(x1,y1,length(x1))
n2=0:(length(circonv1)-1)
figure
stem(n2,circonv1)
xlabel('n')
ylabel('magnitude')
title('Linear Convolution of the sequnces after zero-padding')

%% E. Consider the sequence x(n)=[-3 5 8 6 2 2] and y(n)=[1 1 4 2]. Repeat part(a) thriugh (d) for this new case.

%(a)
x2=[-3 5 8 6 2 2];
y2=[1 1 4 2 0 0];
k1=conv(x2,y2)
n3=0:(length(k1)-1);
figurefigurefigure
stem(n3,k1)
xlabel('n')
ylabel('magnitude')
title('Linear Convolution of two sequnces')

%(b)
circonv2=cconv(x2,y2,length(x2))
n4=0:(length(circonv2)-1);
figure
stem(n4,circonv2)
xlabel('n')
ylabel('magnitude')
title('Circulation Convolution of two sequnces')

%(c)
Xk=fft(x2)
Yk=fft(y2)
Zk=Xk.*Yk
Z=ifft(Zk)
figure
stem(0:(length(Z)-1),Z)
xlabel('n')
ylabel('magnitude')
title('Circular convolution using DFT')

%(d)
x2=[-3 5 8 6 2 2];
y2=[1 1 4 2];
len_x2=length(x2);
len_y2=length(y2);
len=length(k1);
x3=[-3 5 8 6 2 2 zeros(1,len-len_x2)];
y3=[1 1 4 2 zeros(1,len-len_y2)];
y4=cconv(x3,y3,length(x3));
n5=0:length(x3)-1;
figure
stem(n5,y3)
xlabel('n')
ylabel('magnitude')
title('Linear Convolution of the sequnces after zero-padding')

%% Conclusion

%{
    In this experiment, we firstly do convolution of two given sequence,
    after that we have performed circular convolution of both the
    sequences. In part(c), we saw that we get same result as that of
    part(b), but only one sample match with that in part(a). In part(d), we
    need 3 zeros to make same that of part(a). In part(e), we have done all
    the same process i.e. from part(a) to part(d), for different samples.
%}
