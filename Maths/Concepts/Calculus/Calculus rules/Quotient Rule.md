#calculus/rules
**Links**
- [[Calculus rules]] 
- [[The Derivative]] 
```dataview
LIST FROM #calculus/rules
```
#### Rule
When $f(x) = \frac{u}{v}$, the derivative can be written as 
- $\frac{dy}{dx} = \frac{ v \frac{du}{dx} - u \frac{dv}{dx} }{ v^{2} }$ or as 
- $f'(x) = \frac{vu' - uv'}{v^{2}}$

#### Example: $y = \frac{x^{2} - 1}{x - 1}$
**Finding $u$ and $u'$**
$u = x^{2} - 1$

$2x^{2-1} \cancel{1}$
$u' = 2x$

**Finding $v$ and $v'$**
$v = x - 1$

$1x^{1-1} \cancel{-1}$
$v' = 1$

**Finding the derivative**
$f'(x) = \frac{vu' - uv'}{v^{2}}$
$\frac{ (x-1)(2x) - (x^{2}-1)(1) }{ (x-1)^{2} }$
-> $\frac{ 2x^{2} -2x - x^{2} + 1 }{ x^{2} - 2x + 1 }$
-> $\frac{x^{2} -2x + 1}{x^{2} - 2x + 1}$
$= 1$
