function Y = S2Y(S,Z_0)
    Y_0 = 1 / Z_0;
    Y11 = Y_0*  ( ( (1-S(1,1))*(1+S(2,2)) + (S(1,2)*S(2,1)) ) / ...
                ( ( (1+S(1,1))*(1+S(2,2)) - (S(1,2)*S(2,1)) ) ) );
    Y12 = Y_0*  ( (  -2*S(1,2) ) / ...
                ( ( (1+S(1,1))*(1+S(2,2)) - (S(1,2)*S(2,1)) ) ) );
    Y21 = Y_0*  ( (  -2*S(2,1) ) / ...
                ( ( (1+S(1,1))*(1+S(2,2)) - (S(1,2)*S(2,1)) ) ) );
    Y22 = Y_0*  ( ( (1+S(1,1))*(1-S(2,2)) + (S(1,2)*S(2,1)) ) / ...
                ( ( (1+S(1,1))*(1+S(2,2)) - (S(1,2)*S(2,1)) ) ) );
    Y = [Y11, Y12; Y21, Y22];
end

