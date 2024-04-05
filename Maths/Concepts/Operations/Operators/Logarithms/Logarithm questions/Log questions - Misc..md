**Links**
- [[Logarithms (log)]] 
- [[Log Laws]]
- [[Log questions - Addition and subtraction]]
- [[Log questions - Log base of base]]

**Table of contents**
Applies [[Log Laws - Log base of base]]
- [[#Find $x$ $ sqrt{e {x} - 1} = 4$|Find x in sqrt]]

#### Find $x$: $ln(3x - 4) = 5$
$ln(3x - 4) = 5$
-> $e^{ln(3x - 4)} = e^{5}$
-> $3x-4 = e^{5}$
-> $3x = e^{5}+ 4$
$x = \frac{e^{5}+4}{3}$


#### Find $t$: $2P = P(1 + \frac{0.2}{4})^{4t}$
**Compound interest**
$P$ = initial investment
$r$ = rate (%)
$m$ = number of times it's compounded
$t$ = period of time (yearly)
$A = P(1 + \frac{r}{m})^{mt}$

- Simplify the rate/times
-> $2P = P(1 + \frac{1}{20})^{4t}$
- Cancel out $P$
-> $2 = (1 + \frac{1}{20})^{4t}$
-> $2 = (\frac{21}{20})^{4t}$
- We want to separate $x^{4t} \xrightarrow{\text{into}} x^{(4^{t})}$ for the next step
-> $2 = ((\frac{21}{20})^{4})^{t}$
- Because this is associated with growth, we use $log_{e}()$
-> $log_{e}(2) = log_{e}((\frac{21}{20})^{4})^{t}$
-> $log_{e}(2) = t \times log_{e}((\frac{21}{20})^{4})$ 
-> $\frac{log_{e}(2)}{log_{e}(\frac{21}{20})^{4}} = t$
-> $\frac{log_{e}(2)}{4 \times log_{e}(\frac{21}{20})} = t$
-> $\frac{0.693}{0.195}$
$t = 3.552$ years at $20\%$ growth

#### Find $x$: $e^{2x^{2}-3x} = 5$
$e^{2x^{2}-3x} = 5$
-> apply [[Log Laws - Log(m raised to n)]]
	-> $log_{e}(e^{2x^{2}-3x}) = log_{e}(5)$
		-> $log_{e}(e^{2x^{2}-3x}) \rightarrow 2x^{2}-3x \times log_{e}(e)$ 
-> Apply [[Log Laws - Log base of base]] 
	-> $log_{e}(e) = 1$
-> $(2x^{2} - 3x) \times 1 = log_{e}(5)$
-> $2x^{2} - 3x = log_{e}(5)$
-> Rearrange for the [[Quadratic formula]] 
	-> $2x^{2} - 3x - log_{e}(5)= 0$
-> $x= \frac{ -(-3) \pm \sqrt{ (-3)^{2} - 4(2)(-log_{e}(5)) } }{ 2(2) }$
-> $x= \frac{ 3 \pm \sqrt{ 9 - 8(-log_{e}(5)) } }{ 4 }$
$x= \frac{ 3 \pm \sqrt{ 9 + 8(log_{e}(5)) } }{ 4 }$


#### Find $x$: $\sqrt{e^{x} - 1} = 4$
$\sqrt{e^{x} - 1} = 4$
-> $e^{x} - 1 = 4^{2}$
-> $e^{x} = 16+1$
Apply [[Log Laws - Log base of base]] 
-> $log_{e}(e^{x}) = log_{e}(17)$
-> $1 \times x = log_{e}(17)$
$x = log_{e}(17)$



#### Solve for $x$: $2y = 10 + e^{3x-4}$
$2y = 10 + e^{3x-4}$
Remember reverse BODMAS - subtract the 10 before ln()'ing
-> $2y - 10 = e^{3x-4}$
-> $ln(2y - 10) = ln(e^{3x-4})$
-> $ln(2y - 10) = 3x-4$
-> $ln(2y - 10) + 4 = 3x$
-> $\frac{ln(2y - 10) + 4}{3} = x$
$x=\frac{ln(2y - 10) + 4}{3}$
