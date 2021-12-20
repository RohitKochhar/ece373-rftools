function generateStabilityCircles(S)
    delta   = S(1,1)*S(2,2) - S(1,2)*S(2,1);
    C_L = conj(S(2,2) - delta*conj(S(1,1))) / (abs(S(2,2))^2 - abs(delta)^2);
    [L_center, L_angle] = rect2polar(C_L);
    L_radius = abs((S(1,2)*S(2,1)) / (abs(S(2,2))^2 - abs(delta)^2));
    disp("Load stability circle centered at " + string(L_center) + " with angle " + string(L_angle) + " and radius " + string(L_radius))
    C_S = conj(S(1,1) - delta*conj(S(2,2))) / (abs(S(1,1))^2 - abs(delta)^2);
    [S_center, S_angle] = rect2polar(C_S);
    S_radius = abs((S(1,2)*S(2,1)) / (abs(S(1,1))^2 - abs(delta)^2));
    disp("Source stability circle centered at " + string(S_center) + " with angle " + string(S_angle) + " and radius " + string(S_radius))
end

