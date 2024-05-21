#calculus/rules
**Linus**
- [[Calculus rules]] 
- [[The Derivative]] 
```dataview
LIST FROM #calculus/rules
```

#### Rule
When $f(x) = uv$, the derivative can be written as 
- $u \frac{dv}{dx} + v \frac{du}{dx}$ or as 
- $u v' + vu'$
Notice that $u$ multiplies by $\frac{dv}{dx}$, not $\frac{du}{dx}$

#### Example: $(x - 3)(x^{2} + 2)$
**Finding $u$**
$u = x - 3$
-> $1x^{0} \cancel{-3}$
$\frac{du}{dx} = u' = 1$

**Finding $v$**
$v = x^{2} + 2$
-> $2x^{1} \cancel{+2}$
$\frac{dv}{dx} = v' =2x$

**Finding the derivative**
$u \frac{dv}{dx} + v \frac{du}{dx}$
-> $(x-3)(2x) + (x^{2} + 2)(1)$
-> $2x^{2} - 6x + x^{2} + 2$
-> $3x^{2} - 6x + 2$
