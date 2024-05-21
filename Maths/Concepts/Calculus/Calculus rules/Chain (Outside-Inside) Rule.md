#calculus/rules
**Links**
- [[Calculus rules]] 
- [[The Derivative]] 
```dataview
LIST FROM #calculus/rules
```

#### Rule
When $y = f(u)$ and $u= g(x)$, or $y=f(\text{ }g(x)\text{ })$, the derivative can be written as
- $\frac{dy}{dx} = \frac{dy}{du} \times \frac{du}{dx}$
- $f'(x) = y' \times u$

- $\text{ ' of only outer function } \times \text{' of inner function}$
- $u' \times v'$

#### Example: $y = \sin(x^{2} + 1)$
$u = x^{2} + 1$
$u' = 2x$

$y = \sin(u)$
$\frac{dy}{du} = y' = \cos(u)$

$f'(x) = \cos(u) \times 2x$
-> $f'(x) = 2x \cos(x^{2} + 1)$

#### Example: $y = e^{4x^{3}+7}$
$u = 4x^{3} + 7$
$u' = 12x^{2}$

$y = e^{u}$
$y' = e^{u}$

$e^{u} \times 12x^{2}$
-> $e^{4x^{3}+7} \times 12x^{2}$
$= 12x^{2}e^{4x^{3}+7}$


#### Example: $\ln(x^{2} - 3x + 2)$
$u = x^{2} - 3x + 2$
$u' = 2x - 3$

$y = \ln(u)$
$y' = \frac{1}{u}$

$u' \times y'$
-> $2x - 3 \times \frac{1}{u}$
$= \frac{2x-3}{x^{2}-3x+2}$


#### Example: $y=\sqrt{x^{2} - 4}$
$u = x^{2} - 4$
$u' = 2x$

$y = (u)^\frac{1}{2}$
$y' = \frac{1}{2}(u)^{-\frac{1}{2}} = \frac{1}{2 \sqrt{u}}$

$u' \times y'$
-> $\frac{2x}{2\sqrt{x^{2}-4}}$
$= \frac{x}{\sqrt{x^{2}-4}}$


#### Example: $y = \cos(2x+4)$
$u = 2x + 4$
$u' = 2$

$y = \cos(u)$
$y' = -\sin(u)$

$u' \times y'$
$=-2 \times \sin(2x+4)$
