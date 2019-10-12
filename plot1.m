pkg load signal
time = -4:1/1000:4;
s_t= 5*(1-sawtooth(pi*time));
plot(time,s_t,'LineWidth',2);
grid on
