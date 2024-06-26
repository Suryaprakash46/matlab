clc;
clear all;
close all;
disp('Difference Equation of a digital system');
N=input('Desired Impulse response length = ');
b=input('Coefficients of x[n] terms = ');
a=input('Coefficients of y[n] terms = ');
h=impz(b,a,N); disp('Impulse response of the system is h = ');
disp(h);
n=0:1:N-1;
figure(1);
stem(n,h);
xlabel('time index');
ylabel('h[n]');
title('Impulse response');
figure(2);
zplane(b,a);
xlabel('Real part');
ylabel('Imaginary part');
title('Poles and Zeros of H[z] in Z-plane');