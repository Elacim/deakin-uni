#calculus/rules
**Links**
- [[Calculus rules]] 
- [[The Derivative]] 
```dataview
LIST FROM #calculus/rules
```

#### $y= \sin(3x) \times \ln(3x^{2} + 2x)$
Chain rule and product rule are needed
-> $\sin(3x) = 2\cos(2x)$

$\ln(3x^{2} + 2x)$
-> $u' = 6x + 2$
-> $y = \frac{1}{u}$
$= \frac{6x+2}{3x^{2}+2x}$


$2\cos(2x) \times \frac{6x+2}{3x^{2}+2x}$


### $y = \frac{ \cos( x^{2} - 3x + 2) }{ x }$


### $y = (x^{2} - 3x + 5) \times \sin(x^{3} + 1)$
$v_{1}/v_{1}' = (u)$
$u_{1} = x^{2} - 3x + 5$
$u_{1}' = 2x - 3$

$v_{2} = \sin(u)$
$v_{2}' = \cos(u)$
$u_{2} = x^{3} + 1$
$u_{2}' = 3x^{2}$



### $y = \sin(3x) \times \ln(3x^{2} + 2x)$
$v_{1} = \sin(u_{1})$
$v_{1}' = \cos(u_{1})$
$u_{1} = 3x$
$u_{1}' = 3$

$v_{1}' \times u_{1}'$
-> $3\cos(3x)$

$v_{2} = \ln(u_{2})$
$v_{2}' = \frac{1}{u_{2}}$
$u_{2} = 3x^{2} + 2x$
$u_{2}' = 6x + 2$

$v_{2}' \times u_{2}'$
-> $\frac{6x+2}{ 3x^{2} + 2x }$


$u v' + vu'$
$\sin(3x) \times \frac{6x+2}{3x^{2}+2x} + \ln(3x^{2} + 2x) \times 3\cos(3x)$




### $y = e^{4x} \times \cos(x^{2} - 3x + 2)$
$u_{1}' = 4e^{4x}$

$v_{2}' = (-2x + 3)\sin(x^{2} - 3x + 2)$


$uv' + vu'$
$e^{4x} \times (-2x + 3)\sin(x^{2} - 3x + 2) + \cos(x^{2} - 3x + 2) \times 4e^{4x}$
