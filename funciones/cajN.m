function x = cajN(n, N)
    % Inicializa el vector de salida x con ceros
    x = zeros(size(n));

    % Encuentra el índice central
    idx_center = find(n == 0);

    % Establece el valor de la señal cajón en 1 en el intervalo [-N, N]
    x(idx_center - N:idx_center + N) = 1;
end