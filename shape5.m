pkg load signal
time = -4:1/1000:4;
s_t= (0.5*(sawtooth(pi*time-(pi),0.5)))+0.5;
plot(time,s_t,'LineWidth',2);
grid on