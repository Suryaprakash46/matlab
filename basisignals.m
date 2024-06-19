%Program for unit step sequence
clc;
N=input('Enter the length of unit step sequence(N)= ');
n=0:1:N-1;
y=ones(1,N);
subplot(3,2,1);
stem(n,y,'k');
xlabel('Time')
ylabel('Amplitude')