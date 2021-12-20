function [] = AnalyzeSMatrix(S)
    % Get Matrix Size
    [n, m] = size(S);
    % Create unitary matrix
    U = zeros(n, m);
    % Check Reciprocity
    disp("Checking if S is reciprocal")
    isReciprocal = 1;
    for i = 1:n
        U(i,i) = 1;
        for j = 1:m
            isReciprocal = isReciprocal & (S(i,j) == S(j,i));
        end
    end
    if isReciprocal
        disp("    - S_12 = S_21 = " + sprintf("%0.2d", S(1,2)) + ", S is reciprocal")
    else
        disp("    - S_12 = " + sprintf("%0.2d", S(1,2)) + ", S_21 = " + sprintf("%0.2d", S(2,1)) + ", S is not reciprocal")
    end
    disp(" ")
    % Check if S is loseless
    disp("Checking if S is reciprocal")
    isLossless =    (S' * conj(S) == U);
    if isLossless
        disp("Unitary condition met, S is lossless")
    else
        disp("Unitary condition not met, S is not lossless")
    end
end
