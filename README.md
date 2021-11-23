# ece373-rftools
MATLAB functions and tools to aid RF and Microwave circuit design
## Chapter 12: Microwave Amplifier Design
### gainsFromS(S [2x2 matrix], Z_S [Source Impedance], Z_l [Load Impedance], Z_0 [Characteristic Impedance])
GAINSFROMS Returns G, G_A, G_T from source, load, and chracteristic impedances and [S]
From Pozar, page 559:
   - G is the ratio of power dissipated in the load ZL to the power delivered to the input of the two-port network
   - G_A is the ratio of the power available from the two-port network to the power available from the source
   - G_T is the ratio of the power delivered to the load to the power available from the source.
This function implements equations from section 12.1 of the textbook for easier calculations
