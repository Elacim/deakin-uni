**Links**
- [[Calculus]] 
- [[The Derivative]] 
- [[What the definite integral finds]] 

If a function, $f$, is continuous over an interval, $[a,b]$, then the definite integral is: 
$\int_{a}^{b} f(x) = [g(x)]^{b}_{a} = g(b) - g(a)$
Higher $y$ minus lower $y$

$\int_{1}^{4} (3x^{2} - 2x)$
$\int(3x^{2} - 2x)$
-> $\frac{3}{3}x^{2+1} - \frac{2}{2}x^{1+1}$
-> $x^{3} - x^{2}$
-> $[x^{3} - x^{2}]_{1}^{4}$

-> $x^{3} - x^{2}$
	-> $4^{3} - 4^{2}$
-> $x^{3} - x^{2}$
	-> $1^{3} - 1^{2}$
-> $(4^{3} - 4^{2}) - (1^{3} - 1^{2})$
-> $(64 - 16) - (1 - 1)$
-> $48 - 0 = 48$

##### Why no $C$ in definite integrals?
-> $(4^{3} - 4^{2} + C) - (1^{3} - 1^{2} + C)$
-> $(64 - 16 + C) - (1 - 1 + C)$
-> $48 + C -1 +1 - C$
-> $48$
No matter what, the $C$ cancels out, so it isn't necessary.


### From graphs
Given $y=4$ and $y = x^{2}$, what is the area between $-2 \leq x \leq 2$?
Do smaller number minus the bigger number, so $\int(4 - x^{2})$.
$[4x - \frac{1}{3}x^{3}]^{2}_{-2}$

$4(-2) - \frac{1}{3}(-2)^{3}$
-> $-8 - \frac{1}{3}(-8)$
-> $-8 + \frac{8}{3}$
-> $\frac{-24}{3} + \frac{8}{3}$
-> $\frac{-16}{3}$

$4(2) - \frac{1}{3}(2)^{3}$
-> $8 - \frac{8}{3}$
-> $\frac{24}{3} - \frac{8}{3}$
-> $\frac{24}{3} - \frac{8}{3}$
-> $\frac{16}{3}$

$\frac{16}{3} - \frac{-16}{3}$
-> $\frac{16}{3} + \frac{16}{3}$
-> $\frac{32}{3}$ units$^{2}$


![[Definite integral - y=x2 and y=4.png|200]]



##### Find the area enclosed by the following curves
$f(x) = -x^{2} + 4x + 5$ and $g(x) = x^{2} - 3x + 5$
$y_{1} = -x^{2} + 4x + 5$ and $y_{2} = x^{2} - 3x + 5$

1. Set the first equation's $y$/$f(x)$ to the second equation's whole expression
	1. e.g. $f(x) = 5x$ and $g(x) = 2+x$, therefore $2+x = 5x$
2. From this, you can find the intervals for the integral. Calculate the $x$, which you can use the zero-product property for if using polynomials.
	1. 
3. To take the appropriate area, subtract the function with the largest $y$ value from the function with the smallest
	1. This may need to be done per interval
		1. If $f(2:3)=5:78$ and $g(2:3)=9:50$, we need to do $g(x) - f(x)$

##### Point(s) of intersection
$x^{2} - 3x + 5 = -x^{2} + 4x + 5$
-> $2x^{2} -7x = 0$
-> $x(2x - 7) = 0$, following the [[Zero-product property]]:

If $x(2x - 7) = 0$, then either $x = 0$, or $2x-7 = 0$.
$x = 0$
and
$2x - 7 = 0$
-> $2x = 7$
$x = \frac{7}{2}$

**Finding $y$ for $x = 0$**
-> $y = 0^{2} - 3(0) + 5$
	-> $y= 5$

**Finding $y$ for $x = \frac{7}{2}$**
-> $y = \frac{7}{2}^{2} - 3\left(\frac{7}{2}\right)+ 5$
	-> $\frac{49}{4} - \frac{21}{2} + 5$
	-> $\frac{49}{4} - \frac{42}{4} + 5$
	-> $\frac{7}{4} + 5 \approx 6.75$ 

The point of intersection coordinates are therefore
$(0, 5)$ and $(\frac{7}{2}, \frac{27}{4})$


#### Using the points of intersection for the interval
The $x$ coordinates are $0$ and $\frac{7}{2}$.