function ABCD = Y2ABCD(Y)
    A = -Y(2,2) / Y(2,1);
    B = -1 / Y(2,1);
    C = -(Y(1,1)*Y(2,2) - Y(1,2)*Y(2,1)) / Y(2,1); 
    D = -Y(1,1) / Y(2,1);
    ABCD = [A B; C D];
end
