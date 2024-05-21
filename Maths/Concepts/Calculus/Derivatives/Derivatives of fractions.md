**Links**
- [[The Derivative]] 
	- \> [[Derivatives of fractions]] 
	- [[Derivatives of trigonometric functions]] 
	- [[Derivatives of logs and e]] 
	- [[Derivatives of roots]] 
- [[Fractions]] 

### Derivatives

##### Given $- \frac{8}{x}$, what is it's derivative?
%% [[Exponent (Index) laws - Reciprocals]] %%

$- \frac{8}{x}$
-> $-1 (\frac{8}{x^{1}})$
-> $-8x^{-1}$
	 
$y = x^{n} \ce{<->} nx^{n-1}$
-> $-8x^{-1}$
-> $-1 \times -8x^{-1 - 1}$
-> $8x^{-2}$
$= \frac{8}{x^{2}}$

### Integrals
Integral :: $\int (\frac{4}{x}) = 4\ln(|x|)$

**If $x$ has a power (e.g. $\frac{c}{x^{2}}$)**
1. Take the constant (numerator) out ($c$)
2. Apply the power rule to the denominator ($\frac{1}{x^{2}} \to x^{-2} \to -x^{-1} \to -\frac{1}{x}$)
3. Multiply the constant by the new denominator ($c \times -\frac{1}{x}$)

**Integral of $\frac{9}{x^{2}}$**
$\frac{1}{x^{2}} = x^{-2}$
-> $\frac{x^{-2 + 1}}{-2 + 1}$
-> $\frac{x^{-1}}{-1}$
-> $- x^{-1}$
-> $- \frac{1}{x}$

$9 \times - \frac{1}{x}$
$= - \frac{9}{x}$


$\int (5x^{-4})$
-> $\frac{5}{x^{4}}$
-> $\frac{1}{x^{4}}= x^{-4}$
	-> $x^{-4+1} \to -3x^{-3}$
	-> $-3x^{-3} = \frac{1}{-3x^{3}}$
$= - \frac{5}{3x^{3}}$

A quick way to do these types of equations is to keep track of each multiplication separately like so:
$-5x^{-4} - 5x^{-3} - 4 + C$
-> $-5\times(-3x^{-3}) - 5 \times (-2x^{-2}) - 4x + C$
-> $\frac{-5}{-3x^{3}} - \frac{5}{-2x^{2}} - 4x + C$
$\frac{-5}{-3x^{3}} + \frac{5}{2x^{2}} - 4x + C$
