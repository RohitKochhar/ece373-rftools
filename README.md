# ece373-rftools
MATLAB functions and tools to aid RF and Microwave circuit design
## Chapter 8: Microwave Filter Design
### GenerateLPF(Cutoff Frequency, Filter Order, Characteristic Impedance, MaximallyFlat?)
Examples:
- GenerateLPF(3e9, 3, 50, 1)
    - Generates 3rd Order Maximally Flat LPF with cutoff frequency of 3GHz for 50 Ohm Characteristic Impedance
- GenerateLPF(4e9, 5, 75, 0)
    - Generates 5th Order 0.5dB Equal Ripple LPF with cutoff frequency of 4GHz for 75 Ohm Characteristic Impedance

### GenerateHPF(Cutoff Frequency, Filter Order, Characteristic Impedance, MaximallyFlat?)
Examples:
- GenerateHPF(7e9, 2, 50, 1)
    - Generates 2rd Order Maximally Flat HPF with cutoff frequency of 7GHz for 50 Ohm Characteristic Impedance
- GenerateLPF(6e9, 4, 75, 0)
    - Generates 4th Order 0.5dB Equal Ripple LPF with cutoff frequency of 6GHz for 75 Ohm Characteristic Impedance

### GenerateBPF(Center Frequency, Fractional Bandwidth, Filter Order, Characteristic Impedance, MaximallyFlat?)
Examples:
- GenerateHPF(7e9, 0.02, 2, 50, 1)
    - Generates 2rd Order Maximally Flat BPF with center frequency of 7GHz for 50 Ohm Characteristic Impedance with 2% fractional bandwidth
- GenerateLPF(6e9, 0.04, 4, 75, 0)
    - Generates 4th Order 0.5dB Equal Ripple BPF with center frequency of 6GHz for 75 Ohm Characteristic Impedance with 4% fractional bandwidth

### GenerateBSF(Center Frequency, Fractional Bandwidth, Filter Order, Characteristic Impedance, MaximallyFlat?)
Examples:
- GenerateHPF(7e9, 0.02, 2, 50, 1)
    - Generates 2rd Order Maximally Flat BSF with center frequency of 7GHz for 50 Ohm Characteristic Impedance with 2% fractional bandwidth
- GenerateLPF(6e9, 0.04, 4, 75, 0)
    - Generates 4th Order 0.5dB Equal Ripple BSF with center frequency of 6GHz for 75 Ohm Characteristic Impedance with 4% fractional bandwidth

## Chapter 12: Microwave Amplifier Design
### gainsFromS(S [2x2 matrix], Z_S [Source Impedance], Z_l [Load Impedance], Z_0 [Characteristic Impedance])
GAINSFROMS Returns G, G_A, G_T from source, load, and chracteristic impedances and [S]
From Pozar, page 559:
   - G is the ratio of power dissipated in the load ZL to the power delivered to the input of the two-port network
   - G_A is the ratio of the power available from the two-port network to the power available from the source
   - G_T is the ratio of the power delivered to the load to the power available from the source.
This function implements equations from section 12.1 of the textbook for easier calculations
