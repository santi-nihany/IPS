clear all;close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones/ej2'));
addpath(fullfile(scriptDir, '..', 'data'));


% PUNTO 1
numAl= 025023; 
[n,h] = hcanald(numAl);

%subplot(2,1,1)
stem(n,h);
title('Señal');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
pause(1);

% PUNTO 2
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0


h2 = ec1(n,x);
%stem(n,h2);
title('Señal 2');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

% PUNTO 3
[x, fs] = audioread('audio.wav');
plot(x);
sound(x,fs);
pause(3);

n = 0:length(x);

y = ec1(n,x);
subplot(3,1,1);
plot(y);
title('Audio ingresado al sistema');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
sound(y,length(x))
pause(3);

yfilt= filtro(n,y);
subplot(3,1,2);
plot(yfilt);
title('Filtrado con 1 rama de retardo');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
sound(yfilt,length(x))
pause(3);

yfilt2= filtro2(n,y);
subplot(3,1,3);
plot(yfilt2);
title('Filtrado con 2 ramas de retardo');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
sound(yfilt2,length(x))
pause(4);


yfilt3= filtro3(n,y);
subplot(2,1,1);
plot(yfilt3);
title('Filtrado con 3 ramas de retardo');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;
sound(yfilt3,length(x))
subplot(2,1,2);
plot(x);
title('Audio original');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

pause(5)
