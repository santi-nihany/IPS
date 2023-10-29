clear all;close all; clc;
addpath('../funciones')
addpath('../data')
numAl= 030123; % entrada de senial
[x,n] = senial(numAl);
% gr�fico
% PlotCompleto([-1 1 -0.5 1.5],'t','Amplitud','Gr�afico de la SVIC',25,'m*-',1.5,t,x);
stem(n,x)
title('Se�al')
xlabel('Instantes (n)')
ylabel('Amplitud (x)')
grid on