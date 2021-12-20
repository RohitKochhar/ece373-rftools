function ABCD = getABCDofTL(beta, l, Z_0)
    A = cos(beta*l);
    B = j*Z_0*sin(beta*l);
    C = j*(1/Z_0)*sin(beta*l);
    D = cos(beta*l);
    ABCD = [A B; C D];
end

