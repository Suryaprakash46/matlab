clc;
clear all;
close all;
disp('Enter the specification of analog filter');
rp=input('Enter pass band Ripples');
rs=input('Enter stop band ripples');
fp=input('Enter pass band frequency');
fs=input('Enter stop band frequency');
f=input('Enter sampling frequency');
w1=2*fp/f;
w2=2*fs/f;
[n,wn]=buttord(w1,w2,rp,rs,'s');
c=input('Enter the choice of filter 1.LPF 2.HPF');
if(c==1)
disp('frequency response of analog LPF is');
[b,a]=butter(n,wn,'low','s');
end;
if(c==2)
disp('frequency response of analog HPF is');
[b,a]=butter(n,wn,'high','s');
end;
w=0:.01:pi;
[h,om]=freqs(b,a,w);
m=20*log10(abs(h))
an=angle(h);
subplot(2,1,1);
plot(om/pi,m);
title('magnitude response of analog filter is');
xlabel('(a) normalized frequency--->');
ylabel('gain in dB--->');
subplot(2,1,2);
plot(om/pi,an);
title('phase response of analog filter is');
xlabel('normalized frequency--->');
ylabel('phase in radians--->');