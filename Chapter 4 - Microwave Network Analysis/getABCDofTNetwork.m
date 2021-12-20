function ABCD = getABCDofTNetwork(Z1, Z2, Z3)
    A = 1 + Z1 / Z3;
    B = Z1 + Z2 + (Z1*Z2)/Z3;
    C = 1/Z3;
    D = 1 + Z2 / Z3;
    ABCD = [A B; C D];
end

