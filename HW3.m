clc;
clear all;
close all;

%%Question 1
num = [1];
den = [1 2 2 0];
sys1 = tf(num,den) 

figure;
rlocus(sys1);

%Give it a ramp input to see the response

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