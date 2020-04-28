%% Expriment No: 6

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 16-09-19
%}

clc
clear all
close all

%% B. Compute 8-point DFT of x(n), 0<n<7 using DFT function. Plot the magnitude and phase.

N = 8;
n = 0:(N-1);
x = (0.7).^n;
k1 = 0:(N-1);

Xdft_8=fft(x,N)
mag_Xdft_8=abs(Xdft_8)
phase_Xdft_8=angle(Xdft_8)
 for k = 1:N
     y(k)=0;
     for n=1:N
         y(k)=y(k)+(((0.7).^(n-1)).*exp((-i*2*pi*(k-1)*(n-1)/N)));
     end
 end
 figure
 stem(k1,y)
 title('Plot of 8 point DFT')
 xlabel('k')
 ylabel('y(k)')
 figure
 subplot(2,1,1)
 stem(k1,abs(y))
 title('Plot of magnitude of 8 point DFT')
 xlabel('k')
 ylabel('mag_Xdft_8')
 subplot(2,1,2)
 stem(k1,angle(y))
 title('Plot of phase of 8 point DFT')
 xlabel('k')
 ylabel('phase_Xdft_8')
 
 %% C. Compute 16-point DFT of x(n), 0<n<15 using DFT function. Plot the magnitude and phase.

N = 16;
n = 0:(N-1);
x1 = [x zeros(1,8)];
k2 = 0:(N-1);

Xdft_16=fft(x1,N)
mag_Xdft_16=abs(Xdft_16)
phase_Xdft_16=angle(Xdft_16)
 for k = 1:N
     y1(k)=0;
     for n=1:N
         y1(k)=y1(k)+(x1(n).*exp((-i*2*pi*(k-1)*(n-1)/N)));
     end
 end
 figure
 stem(k2,y1)
 title('Plot of 16 point DFT')
 xlabel('k')
 ylabel('y(k)')
 figure
 subplot(2,1,1)
 stem(k2,abs(y1))
 title('Plot of magnitude of 16 point DFT')
 xlabel('k')
 ylabel('mag_Xdft_16')
 subplot(2,1,2)
 stem(k2,angle(y1))
 title('Plot of phase of 16 point DFT')
 xlabel('k')
 ylabel('phase_Xdft_16')
 
 %% D. Compute 126-point DFT of x(n), 0<n<125 using DFT function. Plot the magnitude and phase.

N = 128;
n = 0:(N-1);
x2 = [x zeros(1,120)];
k3 = 0:(N-1);

Xdft_128=fft(x,N)
mag_Xdft_128=abs(Xdft_128)
phase_Xdft_128=angle(Xdft_128)
 for k = 1:N
     y2(k)=0;
     for n=1:N
         y2(k)=y2(k)+(x2(n).*exp((-i*2*pi*(k-1)*(n-1)/N)));
     end
 end
 figure
 plot(k3,y2)
 title('Plot of 128 point DFT')
 xlabel('k')
 ylabel('y(k)')
 figure
 subplot(2,1,1)
 plot(k3,abs(y2))
 title('Plot of magnitude of 128 point DFT')
 xlabel('k')
 ylabel('mag_Xdft_128')
 subplot(2,1,2)
 plot(k3,angle(y2))
 title('Plot of phase of 128 point DFT')
 xlabel('k')
 ylabel('phase_Xdft_128')
 
 %% Conclusion
 
 %{
    In this experiment we have ploted magnitude and phase of x(n) for
    8-point, 16-point and 126-point DFT. We have used stem function for 8-point and
    16-point but plot function for 128-point DFT as the number of samples
    are more.
 %}
 