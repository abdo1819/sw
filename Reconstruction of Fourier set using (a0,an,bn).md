# Reconstruction of Fourier set using (a0,an,bn)

## Code:

```matlab
pkg load symbolic %octave specific command remove it if you are using matlab
warning("off") %octave specific command to suppress python related warnings remove it if you are using matlab
% Function name: fos
% Functionality: reconstructs fourier series given the initial paramenters a0,an,bn,T,t
function result = fos(a0,an,bn,T,t)
  an_terms = 0; %initialize the an_terms with 0 
  for  n = 1:length(an) 
    an_terms = an_terms + an(n) * cos(pi*n*t/T);
  endfor
  bn_terms = 0; %initialize the an_terms with 0
  for n = 1:length(bn)
    bn_terms = bn_terms + bn(n) .* sin(pi*n*t/T);
  endfor
  result =double( a0/2 + an_terms + bn_terms); %reconstruct fourier series (see code explaination for more details)
endfunction
```

### Testing:

```matlab
syms t
A=1;
T=4;
w=2*pi/T;
n=1:10;
a0=(1/T)*int(1,t,0,2);
an=(2/T)*int(cos(n*w*t),t,0,2);
bn=(2/T)*int(sin(n*w*t),t,0,2);
time = -2 :0.1:1.9;
re = fos(a0,an,bn,T,time);

plot(time,re);

```

### result

 ![reconstruction of Fourier series given the parameters we droved from the last section](/home/abdullah/Desktop/reconstructionFourier.svg)

reconstruction of Fourier series given the parameters we droved from the last section

## Line By Line Code Explanation:

**Line 1 :**  `function result = fos(a0,an,bn,T,t):`

​	create a function named `fos` (Fourier series) **(note: `result` is the returned matrix) ** given the essential parameters `a0`, `an` and `bn`

**Line 2 :**  `  an_terms = 0; ` : initialize the an_terms with 0 to make it regular while addition always use addition (see "Line 3 to 5 below")

**Lines 3 to 5 :** 

```matlab
  for  n = 1:length(an) 
    an_terms = an_terms + an(n) * cos(pi*n*t/T);
  endfor
```

* Line 3: given the number of samples "n" iterate from sample 1 to n as the summation operation in Fourier Series definition
* Line 4: add the term `an(n) * cos(pi*n*t/T)` to the initial value (0) (see Line 2) 

* Line 5: ends for in octave syntax Matlab might be different 

**Line 6:** initialize bn_terms (same as Line 2)

**Line 7 to 10:**

```matlab
  for n = 1:length(bn)
    bn_terms = bn_terms + bn(n) .* sin(pi*n*t/T);
  endfor
```

same as Line 3 to 5 except at line 8 here instead of using the cos terms we are using the sin terms.

**Line 11:** `result = double( a0/2 + an_terms + bn_terms);`: reconstructs the Fourier series and return the result matrix 