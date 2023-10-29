clear all;close all; clc;
addpath('../funciones')
addpath('../data')
%numAl= 030123; % entrada de senial
numAl= 025023; % entrada de senial
[n,x] = senial(numAl);
% gráfico
% PlotCompleto([-1 1 -0.5 1.5],'t','Amplitud','Gr´afico de la SVIC',25,'m*-',1.5,t,x);
stem(n,x);
title('Señal');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

X = TFTD(n,x);
ds = 0.001; s = [-2:ds:2];
plot(s,X)
title('Transformada');
xlabel('Tiempo (t)');
ylabel('Amplitud (x)');
grid on;
