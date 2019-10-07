pkg load signal
time = -4:1/1000:4;
s_t= 1-(0.5*(sawtooth(1*pi*time,0.5)))-0.5;
filter = square(0.5*pi*time+(pi/2))+1;
signal = s_t .* filter;
plot(time,signal,'LineWidth',2);
grid on