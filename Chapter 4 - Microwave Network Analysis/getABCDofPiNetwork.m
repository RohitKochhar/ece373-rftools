function ABCD = getABCDofPiNetwork(Z1, Z2, Z3)
    Y1 = Z1^-1 ; Y2 = Z2^-1 ; Y3 = Z3^-1;
    A = 1 + Y2/Y3;
    B = 1 / Y3;
    C = Y1 + Y2 + (Y1*Y2)/Y3;
    D = 1 + Y1 / Y3;
    ABCD = [A B; C D];
end

