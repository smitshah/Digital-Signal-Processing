%% Expriment No: 11

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 
%}

clc
clear all
close all

%% Interpolation by factor I=2

%N=input('Length of input signal='); 
N=30;
%f=input('Frequency of sinusoid='); 
f=0.05;
n=0:N-1;
x=sin(2*pi*f*n);
disp('*** Interpolation by factor I=2 ***');
%I=input('Interpolation factor='); 
I=2;
xi=upsample(x,I);
xii=interp(x,I);
figure('name','Interpolation by factor I=2','NumberTitle','off');
subplot(3,1,1)
stem(n,x)
xlabel('n')
ylabel('x(n)')
title('Original Signal')
subplot(3,1,2)
stem(0:N*I-1,xi)
xlabel('n')
ylabel('xi(n)')
title('Signal after Upsampling')
subplot(3,1,3)
stem(0:((N*I)-1),xii)
xlabel('n')
ylabel('xii(n)')
title('Signal after Intepolation')

%% Decimation by factor D=3

disp('*** Decimation by factor D=3 ***');
%D=input('Decimation factor='); 
D=3;
xd=downsample(x,D);
xdd=decimate(x,D,3,'fir');
figure('name','Decimation by factor D=3','NumberTitle','off');
subplot(3,1,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Original Signal');
subplot(3,1,2);
stem(0:N/D-1,xd);
xlabel('n');
ylabel('xd(n)');
title('Signal after Downsampling');
subplot(3,1,3);
stem(0:N/D-1,xdd);
xlabel('n');
ylabel('xdd(n)');
title('Signal after Decimation');

%% Multirate by non-integer factor I/D=3/4=0.75
disp('*** Multirate by non-integer factor I/D=3/4=0.75 ***');
%I=input('Interpolation factor='); 
I=3;
%D=input('Decimation factor='); 
D=4;
xi=interp(x,I);
xid=decimate(xi,D,3,'fir');
figure('name','Multirate by non-integer factor I/D=3/4','NumberTitle','off');
subplot(311);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Original Signal');
subplot(312);
stem(0:N*I-1,xi);
xlabel('n');
ylabel('xi(n)');
title('Signal after Interpolation');
subplot(313);
stem(0:round(N*I/D-1),xid);
xlabel('n');
ylabel('xid(n)');
title('Signal after Decimation');