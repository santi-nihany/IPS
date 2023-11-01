clear all;close all; clc;
addpath('../funciones')
addpath('../data')

[x, fs] = audioread('../../data/audio.wav');
%disp(fs);
plot(x);
%sound(x,fs);

n = 0:length(x);

y = ec1(n,x);
sound(y,length(x))
stem(y);
title('Señal audio');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;