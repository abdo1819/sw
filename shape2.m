pkg load signal
time = (-4:1/1000:4);
s_t= 5/2*(1-sawtooth(pi*time));
s =1+square(0.5*pi*time);
wave2 = s_t .* s;
plot(time,wave2,'LineWidth',2);
grid on