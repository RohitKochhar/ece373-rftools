function S = Z2S(Z, Z_0)
    S11 =   ( ((Z(1,1)-Z_0)*(Z(2,2)+Z_0) - (Z(1,2)*Z(2,1))) / ... 
            ( ((Z(1,1)+Z_0)*(Z(2,2)+Z_0) - (Z(1,2)*Z(2,1)))) );
    S12 =   ( ( 2*Z(1,2)*Z_0 ) / ... 
            ( ((Z(1,1)+Z_0)*(Z(2,2)+Z_0) - (Z(1,2)*Z(2,1)))) );
    S21 =   ( ( 2*Z(2,1)*Z_0 ) / ... 
            ( ((Z(1,1)+Z_0)*(Z(2,2)+Z_0) - (Z(1,2)*Z(2,1)))) );
    S22 =   ( ((Z(1,1)+Z_0)*(Z(2,2)-Z_0) - (Z(1,2)*Z(2,1))) / ... 
            ( ((Z(1,1)+Z_0)*(Z(2,2)+Z_0) - (Z(1,2)*Z(2,1)))) );
    S = [S11, S12; S21, S22];
end

