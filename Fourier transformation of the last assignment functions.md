# Fourier transformation of the last assignment functions

Fourier transform for the previous assignments (see the previous assignment documentation) (see appendix A for the original graph)

## Graph 1:

### Code 

```matlab
pkg load signal %import signal package (octave related commad remove it if you are using matlab)

ft = 1000; % sampling frequency
duration = (-4:1/ft:4-1/ft); % signal duration
s_t= 5/2*(sawtooth(pi*duration,0)+1);
s =1+square(0.5*pi*duration);
res_wave = s_t .* s;

N = length(duration); % Number of samples
Fabs=abs(fft(res_wave));
Fshift = fftshift(Fabs/(N/2));

n = -(-N/2:N/2-1)*(ft/N); 
 
plot(n,2*Fshift/N,'LineWidth',2);
grid on
```

### result:

![](/home/abdullah/Desktop/fofo.svg)

### Line By Line Code Explanation: 

**Line 1 to 5:**

```matlab
ft = 1000; % sampling frequency
duration = (-4:1/ft:4-1/ft); % signal duration
s_t= 5/2*(sawtooth(pi*duration,0)+1);
s =1+square(0.5*pi*duration);
wave2 = s_t .* s;
```

generating the graph from the previous section

**Line 6 to 9** Fourier transform procedure we followed during the tutorial section

**Line 10:** 

```matlab
plot(n,2*Fshift/N,'LineWidth',2);
grid on
```

the plotting procedure we followed during the tutorial section.

## Graph 2:

**Note:** graph two is quite smiler to graph one just replace the lines from 1 to 5 the the new graph's code with a little tweaks i am going to explain in the explanation section

### Code

```matlab
pkg load signal %octave specific load package syntax remove it if you are using matlab

ft = 1000; % sampling frequency
duration = (-4:1/ft:4-1/ft); % signal duration

freq = 1/4;
periods = 1.75/freq;
phase_shift=1;
y = sawtooth((2*pi*freq*(t+phase_shift)),.5);
N = length(duration); % Number of samples
Fabs = abs(fft(y));
Fshift = fftshift(Fabs/(N/2));
n = -(-N/2:N/2)*(ft/N); 

plot(n,2*Fshift/N,'LineWidth',2);
grid on	
```

### Code Explanation:

the difference between this code and the previous one is we have just replaced the graph generation function with a different but with taking the difference in lengths into consideration.

### Result:

![](/home/abdullah/Desktop/pic2.svg)

## Appendix A (The original graphs)

Graph 2:

![](/home/abdullah/Desktop/G2.svg)

Graph 3

![](/home/abdullah/Desktop/G3_01.png)