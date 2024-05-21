**Links**
- [[Integrals]] 
- [[Domain and range]] 
	- [[Domain and range#Explainer of how to find the domain|Explainer of how to find the domain]]
- [[10.3HD]] 

PDF :: Probability Density Function

**Requirements for PDFs**
- $f(x) \geq 0$ for all the $x$ values in $[a, b]$
	- i.e. is the range $\geq$ for all $x$ values in the domain?
- $\int_{a}^{b} f(x)dx = 1$


### Finding a valid PDF
Using $f(x) = 0.048x(5-x)$ for $x \in [0, 5]$
-> $\int^{5}_{0} 0.048x(5-x)dx$
-> $0.048 \int^{5}_{0} x(5-x)dx$
-> $0.048 \int^{5}_{0} (5x-x^{2})dx$
-> $0.048 \frac{5}{2}x^{2} - \frac{1}{3}x^{3}$
$= 0.048 [\frac{5}{2}x^{2} - \frac{1}{3}x^{3}]^{5}_{0}$

$0.048 \times \frac{5}{2}(5)^{2} - \frac{1}{3}(5)^{3}$
-> $0.048 \times \frac{5\times25}{2} - \frac{125}{3}$
-> $0.048 \times \frac{125}{2} - \frac{125}{3}$
-> $0.048 \times \frac{375}{6} - \frac{250}{6}$
-> $\frac{6}{125} \times \frac{125}{6}$
$= 1$

$0.048 \times \frac{5}{2}(0)^{2} - \frac{1}{3}(0)^{3}$
-> $\frac{6}{125} \times 0 - 0$
$= 0$

$1 - 0 = 1$, therefore this function is a valid PDF