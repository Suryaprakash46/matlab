clc;
clear all;
close all;
% Difference equation of a second order system
% y[n]-0.25y[n-1]+0.45y[n-2]=1.55x[n]+1.95x[n-1]+ 2.15x[n-2]
b=input('enter the coefficients of x(n),x(n-1)-----');
a=input('enter the coefficients of y(n),y(n-1)----');
N=input('enter the number of samples of frequency response ');
[h,t]=freqz(b,a,N);
subplot(2,1,1);
% figure(1);
plot(t,h);
subplot(2,1,2);
% figure(2);
stem(t,h);
title('plot of frequency response');
ylabel('amplitude');
xlabel('time index----->N');
disp(h);
grid on;