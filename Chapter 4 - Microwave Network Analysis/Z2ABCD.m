function ABCD = Z2ABCD(Z)
    A = Z(1,1) / Z(2,1);
    B = (Z(1,1)*Z(2,2) - Z(1,2)*Z(2,1)) / Z(2,1); 
    C = 1 / Z(2,1);
    D = Z(2,2) / Z(2,1);
    ABCD = [A B; C D];
end

