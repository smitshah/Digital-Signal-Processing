%% Expriment No: 10

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 
%}

clc
clear all
close all

%% Write a MATLAB code to design IIR Butterworth low pass digital filter for following specifications using bilinear transformation technique. Assume T=1 sec. 0.8<=|H(e^jw)|<=1 for 0<=w<=0.2*pi and |H(e^jw)|<=0.2 for 0.6*pi<=w<=pi. Plot the frequency response of IIR filter.

T=1;
Wp=0.2*pi;
Ws=0.6*pi;
As=0.2;
Ap=0.8
N=round(0.5*((log(((1/((As)^2))-1)/((1/((Ap)^2))-1)))/(log(Ws/Wp))))
Wc=Wp/(((1/(Ap)^2)-1)^(1/(2*N)))
[b,a] = butter(N,Wc,'s');
[z,p,k]=butter(N,Wc,'s');
h=tf(b,a)
[num,den]=bilinear(b,a,1)
h1=tf(num,den,1)
freqz(num,den)

%% Conclusion

%{
    In this experiment, we have designed a Butterworth low pass filter
    using IIR. For this we have calculated the order of filter with the
    help of formula of N. We have calculated cut-off frequency with the
    help of formula of Wc. Also we have plotted the frequency response of
    the filter.
%}