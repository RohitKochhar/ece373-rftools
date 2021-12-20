function [mag, arg] = rect2polar(z)
    mag = abs(z);
    arg = rad2deg(phase(z));
end
