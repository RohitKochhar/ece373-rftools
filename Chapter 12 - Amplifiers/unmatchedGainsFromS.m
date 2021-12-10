function [G,G_A, G_T] = unmatchedGainsFromS(S,Z_S, Z_L, Z_0)
% -------------------------------------------------------------------------
%GAINSFROMS Returns G, G_A, G_T from source and load impedances and [S]
% From Pozar, page 559:
%   - G is the ratio of power dissipated in the load ZL to the power delivered to the input of the two-port network
%   - G_A is the ratio of the power available from the two-port network to the power available from the source
%   - G_T is the ratio of the power delivered to the load to the power available from the source.
% This function implements equations from section 12.1 of the textbook for
% easier calculattions
% -------------------------------------------------------------------------git
% Reflection coefficients
gamma_L     = (Z_L - Z_0)   / (Z_L + Z_0);                                  % Equation 12.1a
gamma_S     = (Z_S - Z_0)   / (Z_S + Z_0);                                  % Equation 12.1b
gamma_in    = S(1,1) + (S(1,2)*S(2,1)*gamma_L)/(1 - S(2,2)*gamma_L);        % Equation 12.3a
gamma_out   = S(2,2) + (S(1,2)*S(2,1)*gamma_S)/(1 - S(1,1)*gamma_S);        % Equation 12.3b
% G Calculation (Equation 12.8)
G = ( abs(S(2,1))^2 * (1 - abs(gamma_L)^2) ) / ( (1 - abs(gamma_in)^2 )*abs(1-S(2,2)*gamma_L)^2);
% G_A Calculation (Equation 12.12)
G_A = ( abs(S(2,1))^2 * (1 - abs(gamma_S)^2 ) ) / ( abs(1 - S(1,1)*gamma_S)^2 * (1 - abs(gamma_out)^2) );
% G_T Calculation (Equation 12.13)
G_T = ( abs(S(2,1))^2 * (1 - abs(gamma_S)^2 ) * (1 - abs(gamma_L)^2) ) / ( abs(1 - gamma_S*gamma_in)^2 * abs(1 - S(2,2)*gamma_L)^2 );
end

