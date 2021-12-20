function amplifierIsUnconditionallyStable = checkStability(S)
    delta   = S(1,1)*S(2,2) - S(1,2)*S(2,1);
    delStab = abs(delta) < 1;
    if delStab 
        disp('Delta = '+ string(abs(delta)) + ', therefore |Delta| < 1 stability condition met')
    else
        disp('Delta = '+ string(abs(delta)) + ', therefore |Delta| < 1 stability condition not met.')
    end
    K       = (1 - abs(S(1,1))^2 - abs(S(2,2))^2 + abs(delta)^2) / (2*abs(S(1,2)*S(2,1)));
    KStab   = K > 1;
    if KStab 
        disp('K = ' + string(abs(K)) + ', therefore K > 1 stability condition met')
    else
        disp('K = ' + string(abs(K)) + ', therefore K > 1 stability condition not met.')
    end
    
    if KStab & delStab
        disp('Amplifier is unconditionally stable')
    else
        disp('Amplifier is not unconditionally stable')
    end
    amplifierIsUnconditionallyStable = delStab & KStab;
end