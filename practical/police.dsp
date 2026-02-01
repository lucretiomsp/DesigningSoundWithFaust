import("stdfaust.lib");

fMin = 400;
fMax = 1200;
rate = 0.5; // Hz
sirenSpeed = nentry("Speed" , 0.1 , 0.1 , 33.1 ,3);

freq = fMin * pow(fMax / fMin, os.lf_trianglepos(sirenSpeed));

process = os.triangle(freq)  <: dm.zita_light;
