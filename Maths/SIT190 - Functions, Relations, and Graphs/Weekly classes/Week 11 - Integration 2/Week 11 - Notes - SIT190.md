**Links**
- [[Definite integral]] 


## Definite integral questions
### $\int_{1}^{4}(x^{2} - 4x + 1)$
$\frac{1}{3}x^{2+1} - \frac{4}{2}x^{1+1} + x$
-> $\frac{x^{3}}{3} - 2x^{2} + x + C$

$[\frac{x^{3}}{3} - 2x^{2} + x]^{4}_{1}$
-> $\frac{4^{3}}{3} - 2(4^{2}) + 4$
	-> $\frac{64}{3} - 32 + 4$
-> $\frac{1^{3}}{3} - 2(1^{2}) + 1$
	-> $\frac{1}{3} - 2 + 1$

-> $\left(\frac{64}{3} - 32 + 4\right)- (\frac{1}{3} - 2 + 1)$
-> $\frac{64}{3} - \frac{96}{3} + \frac{12}{3}$ $-\frac{1}{3} + \frac{6}{3} - \frac{3}{3}$
-> $- \frac{18}{3}$
$-6$


### $\int_{-2}^{2}(x^{3} - 5x^{2} + 4x + 4)dx$
$(x^{3} - 5x^{2} + 4x + 4)$
-> $\frac{1}{4}x^{3+1} - \frac{5}{3}x^{2+1} + \frac{4}{2}x^{1+1} + \frac{4}{1}x^{0+1}$
-> $\frac{x^{4}}{4} - \frac{5x^{3}}{3} + 2x^{2} + 4x$

$[\frac{x^{4}}{4} - \frac{5x^{3}}{3} + 2x^{2} + 4x]^{2}_{-2}$
-> $\frac{2^{4}}{4} - \frac{5(2^{3)}}{3} + 2(2^{2}) + 4(2)$
	-> $\frac{16}{4} - \frac{40}{3} + 8 + 8$

-> $\frac{-2^{4}}{4} - \frac{5(-2^{3})}{3} + 2(-2^{2}) + 4(-2)$
	-> $\frac{16}{4} - \frac{-40}{3} + 8 - 8$
	-> $\frac{16}{4} + \frac{40}{3}$

$\frac{16}{4} - \frac{40}{3} + 8 + 8 - \frac{16}{4} + \frac{40}{3}$
-> $16$



### $\int_{-\pi}^{\pi} (\cos(2x))dx$
$\cos(2x)$
-> $\frac{1}{2}\sin(2x)$

$[\frac{1}{2}\sin(2x)]^{\pi}_{-\pi}$
-> $\frac{1}{2}\sin(2(\pi))$
	-> $= 0$
-> $\frac{1}{2}\sin(2(-\pi))$
	-> $= 0$
$0 - 0 = 0$


### $\int_{0}^{1}(e^{6x})dx$
$e^{6x}$
-> $\frac{1}{6}e^{6x}$

$[\frac{1}{6}e^{6x}]^{1}_{0}$
-> $\frac{1}{6}e^{6(0)}$
	-> $\frac{1}{6} \times 1 = \frac{1}{6}$
-> $\frac{1}{6}e^{6(1)}$
	-> $\frac{e^{6}}{6}$

$\frac{e^{6}}{6} - \frac{1}{6} = \frac{e^{6} - 1}{6} \approx -67.0715$


### $\int^{3}_{-2} (-4x^{3} + 12x^{2} - 4x + 1)dx$
$(-4x^{3} + 12x^{2} - 4x + 1)'$
-> $\frac{-4}{4}x^{3+1} + \frac{12}{3}x^{2+1} - \frac{4}{2}x^{1+1} + \frac{1}{1}x^{0+1}$
-> $-x^{4} + 4x^{3} - 2x^{2} + x$
-> $[-x^{4} + 4x^{3} - 2x^{2} + x]^{3}_{-2}$

$-x^{4} + 4x^{3} - 2x^{2} + x$ where $x=-2$
-> $x = -53$

$-x^{4} + 4x^{3} - 2x^{2} + x$ where $x=3$
-> $x = 12$

$12 - -53 = 70$






# Area under a curve
The definite integral is related to the area under the curve. 

**Difference between the definite integral and the area**
	What does the definite integral actually find? :: The total culmination of the area, including the positive values and the negative values. This is why it can $=0$


- Sections where $f(x) > 0$ contribute positive values
- Sections where $f(x) < 0$ contribute negative values
- If $f(x)$ $!>0$ in $[a, b]$, we need to adjust to specific areas

Rectangles ($wh$), squares ($L^{2}$), and triangles ($\frac{1}{2}bh$) can be easily found.

The area under a curve can be approximated by many iterations of rectangle subdivision, each subdivision giving a better approximation.
- This is what the definite integral calculates. It is having infinite rectangles of as-close-to-zero width which give a perfect approximation.

##### Why?
We use a rectangle to estimate an area of width $h$ and height $f(x)$. The area is $hf(x)$.
$f(x + h) - f(x) \approx hf(x)$
-> $\frac{f(x + h) - f(x)}{h} \approx f(x)$
This looks similar to finding the derivative...
$f'(x) = \lim_{h\to0} \frac{ f(x + h) - f(x) }{ h  }$
So $f'(x) = f(x)$.
-> $\int(f'(x)) = \int (f(x))$
-> $f(x) = \int(f(x))$
$\ce{Area} = \int (f(x))$, or the definite integral = the area


### Definite integral vs. Area
$\int_{-\pi}^{\pi} (\sin(x))dx$
-> $- \frac{1}{1}\cos(x) = -\cos(x)$

$-\cos(\pi) - -\cos(-\pi)$
-> $- -1 - - -1$
-> $+1 + -1$
-> $= 0$
The total sum of areas is $=0$

##### Find the area
Use the ranges of $-\pi, 0$ and $0, \pi$
$\int_{-\pi}^{0}$ and $\int_{0}^{\pi}$

$-\cos(-\pi) - -\cos(0)$
-> $- - 1 - - +1$
$1 + 1 = 2$

$-\cos(0) - -\cos(\pi)$
-> $- +1 - - - 1$
-> $-1 - 1$
$-2$, area should be positive so $|-2| = 2$

Total area $2 + 2 = 4$


