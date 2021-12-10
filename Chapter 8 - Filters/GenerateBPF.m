function [] = GenerateBPF(f_0, del, N, Z_0, isMaximallyFlat)
    disp(" ")
    load maximallyFlatValues.mat maximallyFlatValues
    load equalRipplePoint5DbValues.mat equalRipplePoint5DB
    disp("Creating BPF with center frequency: " + sprintf('%0.2e', f_0) + " Hz" ...
        + " and fractional bandwidth of " + sprintf('%0.3f', del))
    f_l     = f_0 - 0.5*del*f_0;
    f_u     = f_0 + 0.5*del*f_0;
    BW      = f_u - f_l;
    disp("Lower Cutoff: " + sprintf('%0.2e', f_l) + " Hz" ...
        + ", upper cutoff: " + sprintf('%0.2e', f_u) + ", BW: " + sprintf('%0.2e', BW))
    
    w_0     = 2*pi*f_0;
    disp("Angular frequency, w_0: " + sprintf('%0.2e', w_0) + " rad s^-1")
    if isMaximallyFlat
        g_vals = maximallyFlatValues(N, :);
        disp("Maximally Flat g-values: " + sprintf(' %0.5f %0.5f', g_vals(1:N+1)))
    else
        g_vals = equalRipplePoint5DB(N, :);
        disp("Equal Ripple (0.5dB) g-values: " + sprintf(' %0.5f %0.5f', g_vals(1:N+1)))
    end
    disp(" ")
    % truncate g_vals
    g_vals = g_vals(1:N+1);
    disp("R_0" + " = " + int2str(Z_0))
    for i = 1:length(g_vals) - 1
        g = g_vals(i);
        % Shunt L C will be even
        if (mod(i, 2) == 0)
            l       = (Z_0*del) / (w_0*g);
            c       = (g)   / (Z_0*w_0*del);
            disp("Parralel Shunt L_" + int2str(i) + " = " + sprintf('%0.4e', l))
            disp("Parralel Shunt C_" + int2str(i) + " = " + sprintf('%0.4e', c))
        else 
        % Series L C will be odd
            l       = (Z_0*g) / (w_0*del);
            c       = (del)   / (Z_0*w_0*g);
            disp("Series L_" + int2str(i) + " = " + sprintf('%0.4e', l))
            disp("Series C_" + int2str(i) + " = " + sprintf('%0.4e', c))
        end
    end
    disp("R_N+1" + " = " + int2str(Z_0))
    disp(" ")
end