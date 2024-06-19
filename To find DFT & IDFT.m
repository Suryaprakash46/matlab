clc;
clear all;
close all;
x=input('enter sequence');
L=length(x);
for i=1:L
s=0;
for k=1:L
s=s+x(k).*exp(-j*2*pi*(i-1)*(k-1)/L);
end;
c(i)=s;
a=abs(c)
end;
display(c);
%program to generate IDFT of a given sequence
clc;
clear all;
close all;
x=input('enter sequence');
L=length(x);
for i=1:L
s=0;
for k=1:L
s=s+x(k).*exp(j*2*pi*(i-1)*(k-1)/L);
end;
c(i)=s/L;
end;
display(c);