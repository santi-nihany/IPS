clear all;close all; clc;
addpath('../funciones')
addpath('../data')

% PUNTO 1
numAl= 025023; 
[n,h] = hcanald(numAl);

%stem(n,h);
title('Se�al');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

% PUNTO 2
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0

h2 = ec1(n,x);
stem(n,h2);
title('Se�al 2');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

% PUNTO 3
[x, fs] = audioread('audio.wav');
%disp(fs);
plot(x);
%sound(x,fs);

n = 0:length(x);

y = ec1(n,x);
sound(y,length(x))
stem(y);
title('Se�al audio');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;