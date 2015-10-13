clc;
clear all;
close all;

%%Question 1
num = [1];
den = [1 2 2 0];
sys1 = tf(num,den);     % My transfer function 

figure;
rlocus(sys1);
% [k, poles] = rlocfind(sys1);

%Give it a ramp input to see the response
t = 0:0.1:10;
alpha = 1;
ramp = alpha*t;         % My input signal
[y,t] = lsim(sys1,ramp,t);
figure;
plot(t,y);
xlabel('Time(secs)');
ylabel('Amplitude');
title('Response to a Ramp Input');

%cltf = feedback(k*sys1,1)
%step(cltf/s)
%ramp(cltf)

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