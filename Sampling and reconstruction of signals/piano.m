%% Expriment No: 3 (b)

%{
     Name: Smit Shah
     PRN: 17070123090
     Batch: EB-2

     Date: 12-08-19
%}

clc;
clear all;
close all;

%% Q2. Run piano.m file in MATLAB. Change Fs=600Hz. Calculate the aliased frequencie for all notes of piano.

BB=[];
A=440;
j=0;
for i=-9:3
    j=j+1;
B=2^(i/12);
AA=440*B;
BB=[BB round(AA)];
end
C=BB(1);
D=BB(3);
E=BB(5);
F=BB(6);
G=BB(8);
B=BB(12);
CC=BB(13);
freq=[C D E F G B A CC];
freq_str=['C' 'D' 'E' 'F' 'G' 'B' 'A' 'CC'];
% period=ceil((1./freq)*1000000);
% tone=ceil(period/2.5);
freq_max=max(freq);
Fs1=8000;
Ts=1/Fs1;
t=0:Ts:0.5;
r=0;
for i=1:length(freq)
s = (i)*sin(2*pi*freq(i)*t);
sound(s)
pause(0.5)
N=length(s);
c = fft(s)/N;            
y=fftshift(c);
p = abs(y);         
f = (-N/2:1:N/2-1)*Fs1/N;    
if (i<=8)
subplot(8,2,i*2-1)
plot(t(1:50),s(1:50))
xlabel('Time');
ylabel('Amplitude');
title(['Time domain signal of' ' ' freq_str(i) '=' num2str(freq(i)) ' ' 'Hz']);
subplot(8,2,i*2)
plot(f,p)
axis([-1000 1000 0 max(p)])
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
else
r=r+1;
subplot(8,2,r*2-1)
plot(t(1:100),s(1:100))
xlabel('Time');
ylabel('Amplitude');
title(['Time domain signal of' ' ' freq_str(i) '=' num2str(freq(i)) ' ' 'Hz']);
subplot(8,2,r*2)
plot(f,p)
axis([-1000 1000 0 max(p)])
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
end 
end

%{
pause(1)

EE=[C C G G A A G F F E E D D C G G F F E E D G G F F E E D];
figure;

for k=1:length(EE)
s2 = 2*sin(2*pi*EE(k)*t);
sound(s2)
pause(0.5)
if (mod(k,7)==0)
    pause(0.3)
end
N2=length(s2);
c2 = fft(s2)/N2;            
y2=fftshift(c2);
p2 = abs(y2);         
f2 = (-N2/2:1:N2/2-1)*Fs1/N2;  
subplot(211)
plot(f2,p2)
axis([-1000 1000 0 1])
hold on
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
subplot(212)
plot(t(1:50),s2(1:50))
hold on
xlabel('Time');
ylabel('Amplitude');
title('Time domain signal');
end
%}

figure 
x=imread('fs_8000.PNG');
x=imresize(x, [512 900]);
imshow(x)
title('fs=8000')
figure
y=imread('fs_600.PNG');
y=imresize(y, [512 900]);
imshow(y)
title('fs=600')

%% Observation

%{
    In this experiment we have observed that, the frequrncies are aliased
    after F=330Hz. This is because of the folding frequency, i.e. F>(Fs/2),
    so the frequencies will be aliased after that frequency only. And it
    will aliase at the rate of F-Fs. So, the new aliased frequency for
    F=330Hz will be F'=270Hz.
%}

%% Conclusion

%{
    In this experiments, first we saw how aliasing occurs due to change in
    frequencies, i.e. if Fs>2Fm, the aliasing ocuurs. After that we saw how
    aliasing occurs in piano, i.e. as we change the frequencies, the
    aliasing occurs, as you see here Fs=8000, and so if we take value of Fs
    as 600, then the aliasing occurs.
%}