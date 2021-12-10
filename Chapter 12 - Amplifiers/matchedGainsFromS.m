function [G_T, G_S ,G_0, G_L] = matchedGainsFromS(S, Z_S, Z_L, Z_0)
% -------------------------------------------------------------------------
%GAINSFROMS Returns G_S, G_0 and G_L from input parameters
% From Pozar, page 562-563:
%   - G_S is the gain factor for the input (source) matching network
%   - G_0 is the gain factor for the transistor itself
%   - G_L is the gain factor for the output (load) matching network
% This function implements equations from section 12.1 of the textbook for
% easier calculattions
% -------------------------------------------------------------------------git
% Reflection coefficients
gamma_L     = (Z_L - Z_0)   / (Z_L + Z_0);                                  % Equation 12.1a
gamma_S     = (Z_S - Z_0)   / (Z_S + Z_0);                                  % Equation 12.1b
gamma_in    = S(1,1) + (S(1,2)*S(2,1)*gamma_L)/(1 - S(2,2)*gamma_L);        % Equation 12.3a
gamma_out   = S(2,2) + (S(1,2)*S(2,1)*gamma_S)/(1 - S(1,1)*gamma_S);        % Equation 12.3b
% G_S Calculation (Equation 12.16a)
G_S     = (1 - abs(gamma_S)^2 ) / abs( 1 - gamma_in*gamma_S )^2;
% G_0 Calculation (Equation 12.16b)
G_0     = abs(S(2,1))^2;
% G_L Calculation (Equation 12.16c)
G_L     = (1 - abs(gamma_L)^2 ) / abs( 1 - gamma_out*gamma_S )^2;
% G_T Calculation
G_T     = G_S*G_0*G_L;
end

