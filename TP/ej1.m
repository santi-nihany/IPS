clear all;close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones/ej1'));
addpath(fullfile(scriptDir, '..', 'funciones/ej2'));
addpath(fullfile(scriptDir, '..', 'data'));
% PUNTO 1
numAl= 030123; % entrada de senial 
[n,x] = senial(numAl);

stem(n,x); % gráfico de senial
title('Señal');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

X = TFTD(n,x); % TFTD de senial
ds = 0.001; s = [-2:ds:2];
plot(s,X)
title('Transformada');
xlabel('Tiempo (t)');
ylabel('Amplitud (x)');
grid on;

% PUNTO 3
n = -20:20;
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0

h1 = sist1(n, x); % respuesta impulsional sistema 1
h2 = sist2(n, x); % respuesta impulsional sistema 2
h3 = sist3(n, x); % respuesta impulsional sistema 3
h4 = sist4(n, x); % respuesta impulsional sistema 4

H1 = TFTD(n,h1); % respuesta en frecuencia sistema 1
H2 = TFTD(n,h2); % respuesta en frecuencia sistema 2
H3 = TFTD(n,h3); % respuesta en frecuencia sistema 3
H4 = TFTD(n,h4); % respuesta en frecuencia sistema 4

% PUNTO 4
numAl= 030123;
[n,x] = senial(numAl);
S1 = sist1(n,x); % respuesta sistema 1 con entrada senial
stem(n,S1)
S2 = sist2(n,x); % respuesta sistema 2 con entrada senial
stem(n,S2)
S3 = sist3(n,x); % respuesta sistema 3 con entrada senial
stem(n,S3)
S4 = sist4(n,x); % respuesta sistema 4 con entrada senial
stem(n,S4)