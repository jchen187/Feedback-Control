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
s = tf('s');
cltf = feedback(k*sys1,1) % It is a 1 because we are using unity feedback.
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
sys2 = tf(num,den);

figure;
rlocus(sys2)

%%Question 3
num = [1 2];
den = [1 2 2 0];
sys3 = tf(num,den); 

figure;
rlocus(sys3)

%%Question 4
num = [1];
den = [1 0 0];
sys4 = tf(num,den);

%Part a => C(s)=kp
figure;
rlocus(sys4)
title('Satellite Altitude System with C(s)=kp')

%Part b => C(s)=kp+kds
num = [1 1];
den = [1 0 0];
sys4 = tf(num,den);

figure;
rlocus(sys4)
title('Satellite Altitude System with C(s)=kp+kds')

%USING LEAD COMPENSATION
z = 1;
num = [1 z];

%Set p = 20
p = 20;
%dem = [1 p 0 0];
den = conv([1 0 0],[1 p])
%conv is used to multiply the two polynomials
sys4 = tf(num,den)

figure;
rlocus(sys4)
title('Rocus Locus with p = 20')

%Set p = 9
p = 9;
den = conv([1 0 0],[1 p]);      
sys4 = tf(num,den)

figure;
rlocus(sys4)
title('Rocus Locus with p = 9')

%Set p = 3
p = 3;
den = conv([1 0 0],[1 p]);      
sys4 = tf(num,den)

figure;
rlocus(sys4)
title('Rocus Locus with p = 3')

%A question occured to me. Why is K not important in the transfer function