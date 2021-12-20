function z = polar2rect(mag, arg)
    z        = mag * (cosd(arg) + 1j*sind(arg));
end
