**Links**
- [[Operations]] 
- [[Exponent (Index) laws]] 

**Table of contents**
- [[#Root rules]]
- [[#Root simplification examples (Distribution)]]

### Root rules
Read: https://www.mathwords.com/r/radical_rules.htm

Roots can be taken like fractional exponents, where the desired root is the denominator and the numerator is 1 ($\ce{\frac{1}{root} }$), like this:
$\sqrt[3]{5} = 5^\frac{1}{3}$ or $\sqrt[2]{88} = 88^{\frac{1}{2}}$

Roots like $\frac{1}{\sqrt[]{x}}$ can be rewritten as $\frac{\sqrt[]{x}}{x}$

Negative, fractional exponents like $x^{-\frac{3}{4}}$ fractional square roots:
	$\frac{1}{\sqrt[4]{x^{3}}} = \frac{1}{ x^{\frac{3}{4}} }$

| Rule                                                                         | Condition              | Example                                                                      |
| ---------------------------------------------------------------------------- | ---------------------- | ---------------------------------------------------------------------------- |
| $\sqrt[n]{a^{p}}=a^{\frac{p}{n}}$                                            |                        | $\sqrt[3]{5}=5^{\frac{1}{3}}$, $\sqrt{88^{5}}=88^{\frac{5}{2}}$              |
| $\frac{1}{\sqrt{x}} = \frac{\sqrt{x}}{x}$                                    |                        | $\frac{1}{\sqrt{5}}=\frac{\sqrt{5}}{5}$, $\frac{1}{5}=\frac{5}{5^{2}}$       |
| $x^{ -\frac{n}{d} } = \frac{1}{\sqrt[d]{x^{n}}} = \frac{1}{x^{\frac{n}{d}}}$ |                        | $x^{ -\frac{3}{4} } = \frac{1}{\sqrt[4]{x^{3}}} = \frac{1}{x^{\frac{3}{4}}}$ |
|                                                                              |                        |                                                                              |
| $b=\sqrt[n]{a}$                                                              | $b\geq0$ and $b^{n}=a$ | $\sqrt[3]{8}=2$ as $2^{3}=8$                                                 |
| $\sqrt[n]{a^{n}}=a$                                                          | $n$ is odd             | $\sqrt[7]{-5^{7}}=-5$                                                        |
| $\sqrt[n]{a^{n}}=\|a\|$                                                      | $n$ is even            | $\sqrt[4]{-5^{4}}=\|-5\|=5$                                                  |
| $\sqrt[n]{a^{n}}=a$                                                          | $a \geq 0$             | $\sqrt[83]{\pi^{83}}=\pi$                                                    |

| Distribution                                               |                                                                         Example                                                                         |
| ---------------------------------------------------------- | :-----------------------------------------------------------------------------------------------------------------------------------------------------: |
| $\sqrt[n]{ab}=\sqrt[n]{a} \times \sqrt[n]{b}$              | $\sqrt[4]{48} = \sqrt[4]{16\times3} = \sqrt[4]{16} \times \sqrt[4]{3} = 2\sqrt[4]{3}$<br>Note: $\sqrt[4]{16} \rightarrow \sqrt[4]{2^{4}} \rightarrow 2$ |
| $\sqrt[n]{\frac{a}{b}}=\frac{\sqrt[n]{a}}{\sqrt[n]{b}}$    |                                       $\sqrt[3]{\frac{1}{125}} =\frac{\sqrt[3]{1}}{\sqrt[3]{125}} = \frac{1}{5}$                                        |
| $(\sqrt[n]{a})^{n}=a$                                      |                                                                 $(\sqrt[6]{5})^{6} = 5$                                                                 |
| $\sqrt[n]{a^{m}} = (\sqrt[n]{a})^{m}$ or $a^{\frac{m}{n}}$ |                                              $\sqrt[6]{2^{3}} = 2^{\frac{3}{6}}=2^{\frac{1}{2}}=\sqrt{2}$                                               |
$log_{b}(m) = n$

### Root simplification examples (Distribution)
General rules:
- Pick factors where one of them can be neatly square rooted
- Have the factor being square rooted be the largest factor

##### Simplify $\sqrt{48}$
We want to factorise this into the least square numbers possible.
- $3 \times 16$
	- $\sqrt{3} * \sqrt{16}$
	- $\sqrt{3} * 4$
	- $=4\sqrt{3}$
- $2 \times 24$
	- $\sqrt{2} * \sqrt{24}$
- $4 \times 12$
	- $\sqrt[]{4} * \sqrt[]{12}$
	- $2 * \sqrt[]{12}$
	- $=2\sqrt[]{12}$
All give the same answer that $\sqrt[]{48}$ gives, $6.928...$ The simplest answer, $4\sqrt[]{3}$ is best as all the values are the smallest the can possibly be.


##### Simplify $\sqrt[]{252}$
Going by hand, the factors are:
- $1 * 252$
- $2 * 126$
- $4 * 63$
	- $7 * 9$
- $7 * 9 * 4 = 252$
We want the smallest factors - the primes. We also want a factor that can be $\sqrt[]{}$'d.
$\sqrt{7*4} * \sqrt{9}$
-> $3 \sqrt{28}$
$28$ can't be reduced further as $3$ cannot.