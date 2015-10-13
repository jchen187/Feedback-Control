clc;
clear all;
close all;

%%Question 1
num = [1];
den = [1 2 2 0];
sys1 = tf(num,den);     % My transfer function 

figure;
rlocus(sys1);

%Give it a ramp input
% [k, poles] = rlocfind(sys1);
k = 1;
s = tf('s')
cltf = feedback(k*sys1,1)
figure;
step(cltf/s)
%ramp(cltf)

%Give the same system a ramp input to see the response. Should be the same
%response
t = 0:0.1:10;
alpha = 1;
ramp = alpha*t;         % My ramp input signal
[y,t] = lsim(sys1,ramp,t);
figure;
%plot(t,y); 
plot(t,y,t,ramp); 
xlabel('Time(secs)');
ylabel('Amplitude');
title('Response to a Ramp Input');

%%Question 2
num = [1];
den = [1 4 6 4 0];
sys2 = tf(num,den) 

figure;
rlocus(sys2)

%%Question 3
num = [1 2];
den = [1 2 2 0];
sys3 = tf(num,den) 

figure;
rlocus(sys3)

%%Question 4