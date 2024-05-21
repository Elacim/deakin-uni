**Links**
- [[The Derivative]] 
	- [[Derivatives of fractions]] 
	- [[Derivatives of trigonometric functions]] 
	- \> [[Derivatives of logs and e]] 
	- [[Derivatives of roots]] 

| Function            | Derivative                                                                              | Example                            |
| ------------------- | --------------------------------------------------------------------------------------- | ---------------------------------- |
| $f(x) = e^{kx}$     | $f'(x) = ke^{kx}$                                                                       | $e^{4x^{3}} \to 12e^{4x^{3}}x^{2}$ |
| $f(x) = \ln(x^{p})$ | $f'(x) = \frac{p}{x}$                                                                   |                                    |
| $\ln(f(x))$         | $f'(x)=\frac{f'(x)}{f(x)}$<br>$f'(x)=u' \times v' = u'\times\frac{1}{u} = \frac{u'}{u}$ |                                    |

| Function           | Integral                | Example                                               |
| ------------------ | ----------------------- | ----------------------------------------------------- |
| $\int e^{kx}$      | $\frac{1}{k}e^{kx} + C$ | $4e^{-4x} = 4\times\frac{1}{4}e^{-4x}+C = -e^{-4x}+C$ |
| $\int \frac{1}{x}$ | $1\ln(\|x\|) + C$       |                                                       |
| $\int \ln(kx)$     | $\ln(kx)x-x + C$        | ...don't use this rule                                |


$\ln( f(x) )$
$f(x)= x^{2} + 4$ 
$f'(x) = 2x$
-> $\ln( x^{2} + 4 ) = \frac{2x}{x^{2}+ 4}$

##### Example: $y=\ln(5x)$
$u = 5x$
$v = \ln(u)$

$u' = 5$
$v' = \frac{1}{5x}$

$u' \times v'$
-> $5 \frac{1}{5x}$
-> $\frac{5}{5x}$
-> $\frac{\cancel{5}}{\cancel{5}x}$
$y' = \frac{1}{x}$

##### Example: $e^{4x^{3}}$
$u = 4x^{3}$
$v = e^{u}$

$u' = 12x^{2}$
$v' = e^{u}$  ($e$ is one of the exceptions to the power rule so it's not $u\times e^{u}$)

$u' \times v'$
-> $12x^{2} \times e^{4x^{3}}$
$y' = 12e^{4x^{3}} \times x^{2}$

##### Example: $y=3e^{7x^{2}}$

$u = 7x^{2}$
$u' = 14x^{1}$

$v = 3e^{u}$
$v' = 3e^{u}$

$f'(x) = v' \times u$
$3e^{7x^{2}} \times 7x^{2}$
-> $3e^{7x^{2}} \times 7\times2x^{2-1}$
-> $3e^{7x^{2}} \times 14x$
-> $14x\times3e^{7x^{2}}$
$42e^{7x^{2}}x$



%% [[Log Laws]] %%
$y = \ln(5x^{3})$
$f(x)=5x^{3}$
$f'(x)=15x^{2}$
$\ln(5x^{3})$
-> $\frac{15x^{2}}{5x^{3}}$
-> $3x^{-1}$
$= \frac{3}{x}$

-> $y = 3\ln(5x)$
-> $3*5 \ln(5x)$
-> $15 \frac{1}{5x}$
-> $\frac{15}{5x}$
$\frac{3}{x}$


$f(x) = 5x^{3}$
$f'(x)=15x^{2}$
-> $y= \frac{15x^{2}}{5x^{3}}$
$y = \frac{3}{x}$


$y=\ln(6x^{2})$
-> $2 \ln(6x)$
-> $2 \ln(6) + \ln(x)$
-> $\ln(36x)$



-> $2*2 \ln(6x)$
-> $4 \frac{1}{6x}$
-> $\frac{4}{6x}$
$\frac{2}{x}$
