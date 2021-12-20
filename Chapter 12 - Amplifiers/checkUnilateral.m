function checkUnilateral(S)
    U = (abs(S(1,1))*abs(S(1,2))*abs(S(2,1))*abs(S(2,2))) / ((1- abs(S(1,1))^2)*(1- abs(S(2,2))^2));
	disp("U = " + string(U))
    lower_U = (1 / (1 + U)^2);
    disp("Lower bound for U = " + string(lower_U))
    disp("dB Lower bound for U = " + string(db(lower_U)))
    upper_U = (1 / (1 - U)^2);
    disp("Upper bound for U = " + string(upper_U))
    disp("dB Upper bound for U = " + string(db(upper_U)));
end

