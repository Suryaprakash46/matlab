clc;
clear all;
wc=input('enter the value of cut off frequency');
N=input('enter the value of filter');
alpha=(N-1)/2;
eps=0.001;
%Rectangular Window
n=0:1:N-1;
hd=sin(wc*(n-alpha+eps))./(pi*(n-alpha+eps));
hn=hd
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h));
hold on
%Hamming Window
n=0:1:N-1;
wh=0.54-0.46*cos((2*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'ms');
hold off;
hold on
%Hanning Window
n=0:1:N-1;
wh=0.5-0.5*cos((2*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'blue');
hold off;
hold on
%Blackman Window
n=0:1:N-1;
wh=0.42-0.5*cos((2*pi*n)/(N-1))+0.08*cos((4*pi*n)/(N-1));
hn=hd.*wh
w=0:0.01:pi;
h=freqz(hn,1,w);
plot(w/pi,abs(h),'green');
hold off;