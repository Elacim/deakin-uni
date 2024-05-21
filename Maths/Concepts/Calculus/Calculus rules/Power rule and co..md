#calculus/rules
**Links**
- [[Calculus rules]] 
- [[The Derivative]] 
- [[Differentiation]] 
```dataview
LIST FROM #calculus/rules
```

# Power rule
#### Power rule
$y = x^{n}$ then $\frac{dy}{dx}= nx^{n-1}$. $n$ is a constant.

If $y = x^{2}$ then $\frac{dy}{dx} = 2x^{2-1} = 2x^{1} = 2x$
If $y=x^{-9}$ then $\frac{dy}{dx} = -9x^{-10} = \frac{-9}{x^{10}}$
If $y=x^\frac{7}{3}$ then $\frac{dy}{dx} = \frac{7}{3}x^{\frac{7}{3} - 1} = \frac{7}{3}x^{\frac{4}{3}}$

###### Example
$x^{3} - 10x^{2} + 31x - 20$
-> $3x^{3-1} - 2(10)x^{2-1} + 31x^{1-1} \cancel{- 20}$
	Constants like $-20$ are cancelled out as a number has no rate of change and therefore has no derivative. It is equivalent to a $y=-20$ or $x=-20$ horizontal/vertical line.
-> $3x^{2} - 20x^{1} + 31x^{0}$
$3x^{2} - 20x + 31$


#### Constant multiple rule
If $y=kf(x)$ then $\frac{dy}{dx} = kf'(x)$
If $y=7x^{3}$ then $\frac{dy}{dx} = 7(3x^{2}) = 21x^{2}$


#### Addition rule
If $y= f(x) + g(x)$ then $\frac{dy}{dx} = \frac{df}{dx} = \frac{dg}{dx}$
If $y = 2x^{4} + 6x^{2} + 4x + 5$ then $\frac{dy}{dx} = 8x^{3} + 12x + 4$



# Inverse power rule (Integrals)
$\frac{x^{n+1}}{n+1} + C$ but $n \neq -1$

$\int (5x^{-4})$
-> $5 \times x^{-4}$
-> $5 \times x^{-4+1}$
-> $5 \times x^{-3}$
-> $5 \times \frac{1}{x^{3}}$
$= \frac{5}{3x^{3}}$


$\int(13x^{3} + 5x^{2} - 8x - 10)$
-> $\frac{13}{4}x^{3+1} + \frac{5}{3}x^{2+1} - \frac{8}{2}x^{1+1} - \frac{10}{1}x^{0+1} + C$
-> $\frac{13}{4}x^{4} + \frac{5}{3}x^{3} - 4x^{2} - 10x + C$
If $2x^{3}$, we take that $3$ exponent, add $1$ ($x^{3+1}$) to it to get $x^{4}$, then divide the coefficient by this new incremented number to get $\frac{2}{4}x^{4}$


### Examples
$\int(3x^{2} + 14x + 2)'$
-> $\frac{3 x^{2+1}}{3} + \frac{14 x^{1+1}}{2} + \frac{2 x^{0+1}}{0+1} + C$
-> $\frac{3}{3}x^{2+1} + \frac{14}{2}x^{1+1} + 2x^{0+1} + C$
$x^{3} + 7x^{2} + 2x + C$
