clc;
clear all;
close all;
t=0:0.001:0.6;
x=sin(2*pi*50*t);
y=x+(2*randn(size(t)));
figure,plot(1000*t(1:50),y(1:50))
title('Signal corrupted with zero mean random noise');
xlabel('time(msec)');
y=fft(y,512);
pyy=y.*conj(y)/512;
f=1000*(0:256)/512;
figure,plot(f,pyy(1:257))
title('frequency content of y');
xlabel('frequency(hz)');