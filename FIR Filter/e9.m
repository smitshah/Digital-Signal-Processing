%% Expriment No: 9

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 
%}

clc
clear all
close all

%% Q. Write a MATLAB code to design a FIR LPF of length 25 and cut-off frequency of pi/2 radians, using (i) Rectangular and (ii) Hamming window. Plot the magnitude response of the designed FIR filter using different windows.

w=pi/2;
N=25;
a=(N-1)/2;
Wr=rectwin(N);
Wh=hamming(N);
for n=0:N-1
    if(n~=a)
        hd(n+1)=sin((n-a)*w)/(pi*(n-a));
    else
        hd(n+1)=w/pi;
    end
end
hr=hd.*Wr';
hh=hd.*Wh';
[h1,w1]=freqz(hr);
[h2,w2]=freqz(hh);
plot(w1,abs(h1))
hold on
plot(w2,abs(h2),'--')
xlabel('w')
ylabel('|H(w)|')
title('magnitude response of fir filter')
legend('rectangular','hamming')

%% Conclusion

%{
    Steps To design FIR filter:
    1. Calculate Hd(w)
    2. Calculate Hd(n) from Hd(w) by taking IFT for given cut-off frequency
    3. Multiply Hd(n) with W(n) to get H(n)
    4. Calculate H(z) and realize the filter

    In this experiment, we saw that in hamming filter, the magnitude
    response stays constant for some value and after that it reduces slowly,
    whereas in rectangular this is not the case, there is a sudden drop in
    the magnitude response, also the graph of it is not stable, it keeps on
    changing.
%}
 