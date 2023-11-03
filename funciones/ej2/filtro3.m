function y =filtro3(n,x)
    y = zeros(size(n));  % Inicializar la señal de salida

    for i = 1:length(n)
        y(i) = x(i);
        
        if i > 8820
            y(i) = y(i) + 0.45 * x(i - 8820);
        end

        if i > 26460
            y(i) = y(i) - 0.091125 * x(i - 26460);
        end
        
        if i > 35280
            y(i) = y(i) - 0.041 * x(i - 35280);
        end
    end
end