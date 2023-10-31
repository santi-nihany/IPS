n = -20:20;  
x = zeros(size(n));
x(n == 0) = 1; % delta en n=0

y = sist1(n, x);

stem(n, y);
grid on;
xlabel('n');
ylabel('y[n]');
title('Respuesta del sistema sist1() con un impulso en n=0');

Y = TFTD(n,y);
ds = 0.001; s = [-2:ds:2];
plot(s,Y)
grid on;
xlabel('s');
ylabel('Y(s)');
title('Respuesta en frecuencia al sistema 1');