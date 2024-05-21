**Links**
- [[The Derivative]] 
	- [[Derivatives of fractions]] 
	- [[Derivatives of trigonometric functions]] 
	- [[Derivatives of logs and e]] 
	- \> [[Derivatives of roots]] 
- [[Roots]] 
- [[Exponent (Index) laws - Reciprocals]] 


## Derivatives
##### Example: $\sqrt{x^{2} + 1}$
$u = x^{2} + 1$
$u' = 2x$

$v = \sqrt{u}$
-> $\sqrt{u} = (u)^\frac{1}{2}$
-> $\frac{1}{2}u^{-\frac{1}{2}}$
-> $\frac{1}{2} \times \frac{1}{\sqrt{x^{2}-1}}$
$v' = \frac{1}{2\sqrt{x^{2}-1}}$

$u' \times v'$
-> $2x \times \frac{1}{2\sqrt{x^{2}-1}}$
-> $\frac{2x}{2\sqrt{x^{2}-1}}$
-> $\frac{\cancel{2}x}{\cancel{2}\sqrt{x^{2}-1}}$

$y'  = \frac{x}{\sqrt{x^{2}-1}}$


##### $\frac{1}{\sqrt{x}}$
$- \frac{5}{\sqrt{x+1}}$
-> $- \frac{5}{(x+1)^{\frac{1}{2}}}$
-> $-5(x+1)^{-\frac{1}{2}}$
-> $-5 * -\frac{1}{2} (x+1)^{-\frac{1}{2} - 1}$
-> $\frac{5}{2}(x+1)^{-\frac{3}{2}}$
-> $\frac{5}{2} \times \frac{1}{ \sqrt{(x+1)^{3}} }$ or $\frac{5}{2} \times \frac{1}{(x+1)^\frac{3}{2}}$
$= \frac{5}{2 \sqrt{(x+1)^{3}} }$



$\frac{1}{\sqrt{x}}$
-> $\lim_{h\to0} = \frac{ \frac{1}{\sqrt{x+h}} - \frac{1}{\sqrt{x}} }{ h }$
-> $\frac{ \frac{1}{\sqrt{x+h}} - \frac{1}{\sqrt{x}} }{ h } \times \frac{ \sqrt{x+h}\sqrt{x} }{ \sqrt{x+h}\sqrt{x} }$
-> $\frac{ \sqrt{x} - \sqrt{x+h} }{ h \sqrt{x+h}\sqrt{x} }$
-> $\frac{ \sqrt{x} - \sqrt{x+h} }{ h \sqrt{x+h}\sqrt{x} } \times \frac{ (\sqrt{x}+\sqrt{x+h}) }{(\sqrt{x}+\sqrt{x+h})}$
-> $\frac{ x - x - h }{ h \sqrt{x+h}\sqrt{x} (\sqrt{x}+\sqrt{x+h})}$
-> $\frac{ \cancel{- h} }{ \cancel{h} \sqrt{x+0}\sqrt{x} (\sqrt{x}+\sqrt{x+0})}$
-> $\frac{-1}{ x (2\sqrt{x}) }$
-> $2x * x^\frac{1}{2}$
-> $2x^{\frac{2}{2}} * 1x^{\frac{1}{2}}$
-> $2x^{\frac{3}{2}}$
$= \frac{ -1 }{ 2\sqrt{x^{3}} }$


![[First Principles Formula#Square root $f(x) = sqrt{x}$|Applying the First Principles Formula to square roots]] 

## Integrals


$\int (\sqrt{\frac{1}{x}})$
-> $\frac{\sqrt{1}}{\sqrt{x}}$
-> $\frac{1}{\sqrt{x}}$
-> $x^{-\frac{1}{2}}$
-> $\frac{1}{\frac{1}{2}}x^{-\frac{1}{2}+1}$
-> $2x^{\frac{1}{2}}$
-> $\frac{2}{2\sqrt{x}}$
$= 2\sqrt{x} + C$


###### This is apparently not right but I disagree (somewhat blindly and) vehemently
%% [[Integration by parts]] %%
$\int (\sqrt{\frac{3}{z}})$



$\int (\sqrt{\frac{2}{x}})$
-> $\frac{\sqrt{2}}{\sqrt{x}} + C$
-> $\frac{\sqrt{2}}{x^\frac{1}{2}}$
-> $\sqrt{2} \times x^{-\frac{1}{2}}$
-> $\frac{\sqrt{2}}{\frac{1}{2}} \times x^{-\frac{1}{2}+1}$
-> $2\sqrt{2} \times x^{\frac{1}{2}}$
-> $2\sqrt{2} \times \sqrt{x} + C$
