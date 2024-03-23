**Links**
- [[Kc (equilibrium constant expression)]] )
- [[Solutions]] 
- [[Solution equations]] 
- [[Solutions - Dissolution & molar solubility (Ksp)]] 
- [[Solutions - Dissociation in acidic solution (Ka and pKa)]] 
- [[SLE155 - Chemistry for the Professional Sciences/Week 3 - Chemical Equilibrium/Week 3 - Notes|Week 3 - Notes]]


##### Calculate equilibrium concentrations
$\ce{G: 2H2O ->T[Heat] 2H2 + O2}$
$K_{c} = 5.4 \times 10^{-5}$ at temperature of $3290K$
If a reaction vessel initially contains $\ce{0.500M H2O_{(g)}}$, calculate the equilibrium concentrations of $\ce{H2}$ and $\ce{O2}$ at $3290K$.
$K_{c} = \ce{ \frac{ [H2]^{2} [O2] }{[H2O]^{2}}  }$

|  | $\ce{[H2O]}$ | $\ce{[H2]}$ | $\ce{[O2]}$ |
| ---- | ---- | ---- | ---- |
| Initial | $0.500$ | $0$ | $0$ |
| Change | $-2x$ | $+2x$ | $+x$ |
| Equilibrium | $0.500-2x$ | $-2x$  | $x$ |
This gets:
$5.4 \times 10^{-5} = \frac{(2x)^{2}x}{(0.500-2x)^{2}}$. $-2x$ can be assumed as being $\approx 0.500$, so we ignore it.
Simplified, the equation is $5.4 \times 10^{-5} = \frac{4x^{3}}{(0.500)^{2}}$
$\ce{-> 5.4 \times 10^{-5} \times 0.500^{2}} = 0.0000135 = 1.35 \times 10^-5$
$\ce{-> \frac{4x^{3}}{4} = \frac{1.35 \times 10^{-5}}{4}}$
$\ce{-> x^{3} = 0.000003375 = 3.375 \times 10^{-6}}$
$\ce{-> \sqrt[3]{x} = \sqrt[3]{3.375 \times 10^{-6}}}$
$\ce{-> x = 0.015 = 1.5 \times 10^{-2}}$
$\ce{[H2] = 2x = 3.0 \times 10^{-2}}$
$\ce{[O2] = x = 1.5 \times 10^{-2}}$

Plugging it into [QuickMaths](https://quickmath.com/#c=solve&v1=5.4%255Ccdot10%255E%257B-5%257D%255C%2520%253D%255C%2520%255Cfrac%257B%255Cleft%25282x%255Cright%2529%255E2%255Ccdot%2520x%257D%257B0.500-2x%257D&v3=x) gets the answer of 
$x = 0.0188988157$

##### Known normal $K_{c}$
###### Example 1
The water-gas shift reaction $\ce{CO + H_{2}O <=> CO_{2} + H_{2}}$ has a $K_{c}=4.06$ at $500°C$
If 0.100 mol of $CO$ and 0.100 mol of $H_{2}O$(g) are placed in a 1.00-litre reaction vessel at this temperature, what are the concentrations of the reactants and products when the system reaches equilibrium?

| Concentration | $CO$                         | $H_{2}O$ | $CO_{2}$ | $H_{2}$ |
| ------------- | ---------------------------- | -------- | -------- | ------- |
| Initial       | $C=\frac{0.100}{1.00L}=0.1M$ | $0.1M$   | 0M       | 0M      |
| Change        | $-x$                         | $-x$     | $+x$     | $+x$    |
| Equilibrium   | $0.1M-x$                     | $0.1M-x$ | $0M+x$   | $0M+x$        |

$K_{c} = \frac{ [H_{2}] [CO_{2}] }{ [CO] [H_{2}O] }$
$4.06 = \frac{ [H_{2}] [CO_{2}] }{ [CO] [H_{2}O] }$
	> $4.06 = \frac{ x \times x }{ (0.1-x)(0.1-x) }$
	> $\frac{ x^{2} }{ (0.1-x)^{2} }$
	> $\sqrt{4.06} = \sqrt{ \frac{ x^{2} }{ (0.1-x)^{2} } }$
	> $2.01 = \frac{x}{0.1-x}$
	> $\frac{2.01}{1} = \frac{x}{0.1-x}$ (cross-multiply fractions)
	> $x = 2.01(0.1-x)$
	> $x = 0.201 - 2.01x$
	> $3.01x = 0.201$
	> $x= \frac{0.201}{3.01} = 0.0668$



###### Example 2
At 25°C, $K_{c}=0.145$ for $2BrCl \leftrightarrow Br_{2} + Cl_{2}$
If $BrCl$ initial concentration is 0.050 mol, what is the $K_{c}$ for $Br_{2}$ and $Cl_{2}$?

| Concentration | BrCl     | Br_2 | Cl_2 |
| ------------- | -------- | ---- | ---- |
| Initial       | 0.050    | 0    | 0    |
| Change        | -2x      | +x   | +x   |
| Equilibrium   | 0.050-2x | x    | x     |

$K_{c} = \frac{ [Br_{2}] [Cl_{2}] }{ [BrCl]^{2} }$
$0.145 = \frac{x \times x}{(0.050 - 2x)^{2}} = \frac{2x}{0.050-2x}$; we multiply by 0.050 and -1
$0.145 \times 0.050 = 0.00725 \times -1 = -0.00725$


##### Unknown $K_{c}$
At a certain temperature, $0.200$ mol $H_{2}$ and $0.200$ mol $I_{2}$ added into a $2.00L$ flask
$H_{2 (g)} + I_{2(g)} \leftrightarrow 2HI_{(g)})$
The purple $I_{2}$ vapour was found to have dropped to a concentration of $0.020$ mol $L^{-1}$
What is $K_{c}$ at this temperature?

| Concentration ($M$) | H_2                       | I_2      | 2HI                           |
| ------------------- | ------------------------- | -------- | ----------------------------- |
| Initial             | $\frac{0.200}{2.0L}=0.1M$ | $0.1M$   | $0M$                          |
| Change              | $-0.08M$                  | $-0.08M$ | $+2(0.08M) = +0.160M$ |
| Equilibrium         | $0.020M$                  | $0.020M$ | $0.160M$                      |
$K_{c} = \frac{ [HI]^{2} }{ [H_{2}] [I_{2}] }$
-> $K_{c} = \frac{ 0.160^{2} M}{ 0.020M \times 0.020M } = 64$


##### Known low $\ce{K_{c}}$
At $500°C$, the $K_{c} = 6.0 \times 10^{-28}$ given $2H_{2}O \leftrightarrow 2H_{2} + O_{2}$
What amounts of $H_{2}$ and $O_{2}$ are present in equilibrium in a $5.00L$ vessel if the container initially had $0.015$ mol $H_{2}O$

| Concentration     | $2H_{2}SO$           | $2H_{2}$ | $O_{2}$ |
| ----------------- | -------------------- | -------- | ------- |
| Initial ($M$)     | $\frac{0.015}{5.00L}=0.003M$ | $0$      | $0$     |
| Change ($M$)      | $-2x$                | $+2x$    | $+x$    |
| Equilibrium ($M$) | $0.003M-2x$          | $2x$     | $x$        |


