clear all;close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones/ej2'));
addpath(fullfile(scriptDir, '..', 'data'));


% PUNTO 1
numAl= 025023; 
[n,h] = hcanald(numAl);

stem(n,h);
title('Respuesta impulsional ha');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
pause(3);

% PUNTO 2
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0

h2 = ec1(n,x);
stem(n,h2);
title('Respuesta impulsional h2');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

pause(3)

% PUNTO 3
[x, fs] = audioread('audio.wav');
subplot(2,1,1);
plot(x);
title('Audio original');
xlabel('Tiempo (t)');
ylabel('Amplitud (x)');
grid on;
sound(x,fs);

pause(4);

n = 0:length(x);

y = ec1(n,x); % ingreso del audio al sistema
subplot(2,1,2);
plot(y);
title('Audio ingresado al sistema');
xlabel('Tiempo (t)');
ylabel('Amplitud (y)');
grid on;
sound(y,length(x))

pause(3);
clf
%PUNTO 4
yfilt= filtro(n,y); % 1 rama de retardo
subplot(3,1,1);
plot(yfilt);
title('Filtrado con 1 rama de retardo');
xlabel('Tiempo (t)');
ylabel('Amplitud (y)');
grid on;
sound(yfilt,length(x))

pause(3);

yfilt2= filtro2(n,y); % 2 ramas de retardo
subplot(3,1,2);
plot(yfilt2);
title('Filtrado con 2 ramas de retardo');
xlabel('Tiempo (t)');
ylabel('Amplitud (y)');
grid on;
sound(yfilt2,length(x))

pause(4);

yfilt3= filtro3(n,y); % 3 ramas de retardo
subplot(3,1,3);
plot(yfilt3);
title('Filtrado con 3 ramas de retardo');
xlabel('Tiempo (t)');
ylabel('Amplitud (y)');
grid on;
sound(yfilt3,length(x))

