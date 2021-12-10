function [] = GenerateLPF(f_c, N, Z_0, isMaximallyFlat)
    disp(" ")
    load maximallyFlatValues.mat maximallyFlatValues
    load equalRipplePoint5DbValues.mat equalRipplePoint5DB
    disp("Creating LPF with cutoff frequency: " + sprintf('%0.2e', f_c) + " Hz")
    w_c     = 2*pi*f_c;
    disp("Angular frequency, w_c: " + sprintf('%0.2e', w_c) + " rad s^-1")
    if isMaximallyFlat
        g_vals = maximallyFlatValues(N, :);
        disp("Maximally Flat g-values: " + sprintf(' %0.5f %0.5f', g_vals(1:N+1)))
    else
        g_vals = equalRipplePoint5DB(N, :);
        disp("Equal Ripple (0.5dB) g-values: " + sprintf(' %0.5f %0.5f', g_vals(1:N+1)))
    end
    % truncate g_vals
    g_vals = g_vals(1:N+1);
    disp(" ")
    disp("R_0" + " = " + int2str(Z_0))
    for i = 1:length(g_vals) - 1
        g = g_vals(i);
        % Capacitors will be even
        if (mod(i, 2) == 0)
            c       = g/(Z_0*w_c);
            disp("Shunt C_" + int2str(i) + " = " + sprintf('%0.4e', c))
        else 
        % Inductors will be odd
            l       = Z_0*g / w_c;
            disp("Series L_" + int2str(i) + " = " + sprintf('%0.4e', l))
        end
    end
    disp("R_N+1" + " = " + int2str(Z_0))
    disp(" ")
end

