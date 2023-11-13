clear all;close all; clc;
scriptDir = fileparts(mfilename('fullpath'));
addpath(fullfile(scriptDir, '..', 'funciones/ej1'));
addpath(fullfile(scriptDir, '..', 'data'));
% PUNTO 1
numAl= 030123; % entrada de senial 
[n,x] = senial(numAl);

subplot(2,1,1);
stem(n,x); % gráfico de senial
title('Señal');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

X = TFTD(n,x); % TFTD de senial
subplot(2,1,2);
ds = 0.001; s = [-2:ds:2];
plot(s,X)
title('TFTD de senial');
xlabel('Tiempo (t)');
ylabel('Amplitud (x)');
grid on;

pause(3)


% PUNTO 3
n = -20:20;
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0

h1 = sist1(n, x); % respuesta impulsional sistema 1
subplot(2,2,1);
stem(n,h1); % gráfico de h1
title('Respuesta impulsional h1');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

h2 = sist2(n, x); % respuesta impulsional sistema 2
subplot(2,2,2);
stem(n,h2); % gráfico de h2
title('Respuesta impulsional h2');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

h3 = sist3(n, x); % respuesta impulsional sistema 3
subplot(2,2,3);
stem(n,h3); % gráfico de h3
title('Respuesta impulsional h3');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

h4 = sist4(n, x); % respuesta impulsional sistema 4
subplot(2,2,4);
stem(n,h4); % gráfico de h4
title('Respuesta impulsional h4');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

pause(5)

ds = 0.001; s = [-2:ds:2];

H1 = TFTD(n,h1); % respuesta en frecuencia sistema 1
subplot(2,2,1);
plot(s,H1)
title('Respuesta en frecuencia H1');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

H2 = TFTD(n,h2); % respuesta en frecuencia sistema 2
subplot(2,2,2);
plot(s,H2)
title('Respuesta en frecuencia H2');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

H3 = TFTD(n,h3); % respuesta en frecuencia sistema 3
subplot(2,2,3);
plot(s,H3)
title('Respuesta en frecuencia H3');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

H4 = TFTD(n,h4); % respuesta en frecuencia sistema 4
subplot(2,2,4);
plot(s,H4)
title('Respuesta en frecuencia H4');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

pause(5)

% PUNTO 4
numAl= 030123;
[n,x] = senial(numAl); % se vuelve a invocar para simplificar el uso de las variables n,x

S1 = sist1(n,x); % respuesta sistema 1 con entrada senial
subplot(2,2,1);
stem(n,S1)
title('Sistema 1');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

S2 = sist2(n,x); % respuesta sistema 2 con entrada senial
subplot(2,2,2);
stem(n,S2)
title('Sistema 2');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

S3 = sist3(n,x); % respuesta sistema 3 con entrada senial
subplot(2,2,3);
stem(n,S3)
title('Sistema 3');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

S4 = sist4(n,x); % respuesta sistema 4 con entrada senial
subplot(2,2,4);
stem(n,S4)
title('Sistema 4');
xlabel('Instantes (n)');
ylabel('Amplitud (x)');
grid on;

pause(3);

ds = 0.001; s = [-2:ds:2];

TS1 = TFTD(n,S1); % TFTD de sistema 1
subplot(2,2,1);
plot(s,TS1)
title('TFTD S1');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

TS2 = TFTD(n,S2); % TFTD de sistema 2
subplot(2,2,2);
plot(s,TS2)
title('TFTD S2');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

TS3 = TFTD(n,S3); % TFTD de sistema 3
subplot(2,2,3);
plot(s,TS3)
title('TFTD S3');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;

TS4 = TFTD(n,S4); % TFTD de sistema 4
subplot(2,2,4);
plot(s,TS4)
title('TFTD S4');
xlabel('Instantes (n)');
ylabel('Frecuencia (s)');
grid on;