#notes #week-5
$\sqrt{x}=x^{\frac{1}{2}}$
$(x^{\frac{1}{2}})^{2}=x$

Rearrange $E=hv$ to make $v$ the subject:
$\frac{E}{h}=v$

Make $T$ the subject of this equation
$f=\frac{n}{2l} \sqrt{\frac{T}{M}}$
$\times 2l, \text{ divide by } n$ -> $\frac{f\times2l}{n}=\sqrt{\frac{T}{M}}$
$^{2} \times M$ -> $(\frac{f \times 2l}{n})^2m = T$
Simplify: $T=\frac{4l^{2}f^{2}m}{n^{2}}$

Cause: x-axis
Effect: y-axis


#### Logarithms
**<u>Logarithm</u>:** the exponent or power ($e$) to which a base ($b$) must be raised to yield a given number ($n$) -> $log_{b}(n)=e$. It's the inverse function to exponents. [Source - Britannica](https://www.britannica.com/science/logarithm)
("the log, base $b$ of $n/x$")
Exponentiation: Raise the base ($b$) by exponent ($e$) to get the resulting number ($n$)
Logarithm:  Get the log of base ($b$) with a given number ($n$) to find the exponent ($e$)
$n/x$ = number
$e$ = exponent
$b$ = base
-> $log_{base}(\text{some number n})=\text{exponent}$

| Logarithm form     | Exponent form |
| ------------------ | ------------- |
| $log_{b}(n)=e$     | $b^{e}=n$     |
| $log_{10}(1000)=3$ | $10^3=1000$   |
| $log_{12}(144)=2$  | $12^2=144$    |
| $log_2(8)=3$       | $2^3=8$       |
| $log_2(512)=9$     | $2^9=512$     |
| $log_5(25)=2$      | $5^2=25$      |

###### Log laws 
$log_{a}m+log_{a}n=log_{a}mn$
$log_{a}m-log_{a}n=log_{a}\frac{m}{n}$
$log_{a}m^{n}=nlog_{a}m$
$log_{a}a=1$
$log_{a}1=0$

pH = $-log_{10}[H_{3}O^{+}] \rightarrow [H_{3}O^{+}]=10^{-pH}$
If pH=7.00, $[H_{3}O^{+}]=10^{-7}=1.0 \times 10^{-7}mol/L]$  ($L$=litre)


### Finding scientific notation
0.000000000137 (137 = significant figures, 10 zeroes = exponent, number pre-decimal is 0 = negative exponent)
$1.37 \times 10^{-10}$

42389 = $4.2389 \times 10^{4}$ 
0.00248 = $2.48 \times 10^{-3}$

What are 'SI units'? :: 7 base units in the International Standards System known as SI
What are the 7 base SI units? :: Length (metre), mass (kilogram), time (second), temperature (kelvin), amount of substance (mole), electric current (ampere) and luminous intensity (candela)
Derived unit :: A unit derived from two or more units (e.g. volume ($m^3$) = $L \times W \times H$)

Dimensional analysis
- systematic way to setup problems
- clear understanding of the principles involved
- trains you to organise and evaluate data
- helps identify errors (unwanted units aren't eliminated if problem setup was incorrect)
Seconds in 1 day - needs multiple conversions
Day -> hours (24/day) -> minutes (60/hr) -> seconds (60/m)
$1 \times \frac{24}{1\text{ day}} \times \frac{60}{1\text{ hour}} \times \frac{60}{1\text{ minute}}$ = $1 \times 24 \times 60 \times 60 = 86,400$ - since the denominators are the same ($1$), we can simply multiply the numerators together


Molar mass - $g mol^{-1}=\frac{\text{gram}}{\text{mol}}$
	- physical quantity in grams over physical quantity measured in mole
Concentration - amount per physical volume

Precision - how grouped together are the readings / reproducible / low difference
Accurate - how close to the target are the readings
Precise and accurate - answers are closely grouped and close to the target
Precise but inaccurate - answers are closely grouped but not close to the target
Imprecise but accurate - answers aren't closely grouped but are close to the target
Imprecise and inaccurate - answers aren't closely grouped nor close to the target

Uncertainty - every measurement has a degree of certainty
	- recorded values should use all digits known with certainty plus one estimated digit
Be as precise as you know, not more
```
0.6   - implies 0.5-0.7
0.60  - implies 0.59-0.61
0.600 - implies 0.599-0.601
```
##### Significant figures
Rule 1: All non-zero numbers are significant 
Rule 2: Zeroes in the middle of two non-zero numbers are always significant
Rule 3: Zeroes at the beginning (leading zeroes) are never significant. They only indicate the decimal point.
Rule 5: Zeroes at the end of a number and after decimal point are significant - they wouldn't be shown unless they were significant
Rule 6: Zeroes at the end of a number with no decimal point may or may not be significant (1700 is loosey goosey)
```
How many significant figures in each?
2730.78 - 6
0.0076 - 2
3400 - 2, 3, or 4
3400.0 - 5
```
Exact numbers have no uncertainty (e.g. number of students can't be a decimal, it's always \<number>.00000000...)

When adding/subtracting, the answer can not have more digits after the decimal point than the original numbers
When multiplying/dividing, the answer can not have more significant figures than the original numbers
If the first non-significant digit is 4 or less, remove it and all following numbers
	4.44 -> 4.4
If 5 or more, round up to nearest number
	4.45 -> 4.5

```
Report as the correct number of significant figures
1.008g + 126.90g = 127.908
  ___        __ -> 3/2 sig figs
Pick lowest sig fig count-> 127.91g

0.1000 * 0.09206 * 298.15 / 1.0052 = 2.7305699363
  ----      ----   --- --   - ---- -> lowest is 4 sig figs
... therefore, round to 4 -> 2.731
     3 figs       3 figs         5 figs
( (35.8*10^2) + (2.45*10^3) ) / 6.8931 * 10^4 = 0.0874787831
Least sig figs is 3, therefore the answer is: 8.75 * 10^-2
```
Uncertainty: 
Adding two volumes 
$21.05ml \pm 0.5 + 18.55ml \pm 0.5$
-> ($21.05ml$ + $18.55ml$) $\pm$ ($0.5+0.5$)
\= $39.6ml \pm 0.1ml$

Multiplication and division: add percentage uncertainties
1. Calculate density (mass=5.000g $\pm$ 0.005g; volume=0.2588mL $\pm$ 0.0005mL)
2. Convert absolute uncertainty to % uncertainty
3. Add % uncertainties
4. Convert % uncertainty back to absolute certainty (slide 28a)

0.00435g $\pm$ 0.00001g of a compound is dissolved in 5.000 $\pm$ 0.0001mL of methanol. The extinction coefficient (how dark it is) is read as 546733.224. What is the correct magnitude of the extinction coefficient that should be reported?
Mass uncertainty: $0.00435g \pm 0.00001g \rightarrow \frac{0.00001g}{0.00435g} \times 100=0.23\%$
Volume uncertainty: $\frac{0.0001ml}{5.000ml}=0.002\%$
Absolute uncertainty: $0.23188..+0.002=0.23188$ -> $\frac{0.23188}{100}=0.0023188$
Extinction coefficient * absolute uncertainty = uncertainty in extinction coefficient
$546733.224 \times 0.0023188=1267.7649998112$
-> 547000

$\frac{0.3}{19.32g \text{ } ml^{-1}}$

For practical week 5, read 4.1 and 4.2?
$CH_{4 (g)} + O_{2 (g)} \rightarrow CO_{2 (g)} + H_{2}O_{(g)}$
$1C \rightarrow 1C; 4H \rightarrow 2H; 2O \rightarrow 3O$
$CH_{4 (g)} + O_{2 (g)} \rightarrow CO_{2 (g)} + 2H_{2}O_{(g)}$
$1C$                        $1C$                      
$4 H$                       $4H$
$2O$                       $4O$
$CH_{4 (g)} + 2O_{2 (g)} \rightarrow CO_{2 (g)} + 2H_{2}O_{(g)}$
$1C$                        $1C$                      
$4 H$                       $4H$
$4O$                       $4O$

$Pb(NO_{3})_{2 (aq)} + KI_{(aq)} \rightarrow PbI_{2 (s)} + KNO_{3 (aq)}$ isn't balanced, 
$Pb(NO_{3})_{2 (aq)} + 2KI_{(aq)} \rightarrow PbI_{2 (s)} + 2KNO_{3 (aq)}$ is

$AgNO_{3 (aq)} + NaCl_{(aq)} \rightarrow NaNO_{3 (aq)} + AgCl_{(s)}$ - $AgNo_{3}$ can't be together in solution, they dissociate, a more accurate version is . Don't split apart polyatomic ions. It can split apart from the attached cation. Cation leaving a anion = dissociation.
They're more attracted to water than each other.
$Ag^{+}_{(aq)} + NO^{-}_{3 (aq)} + Na^{+}_{(aq)} + Cl^{-}_{(aq)} \rightarrow Na^{+}_{(aq)} + NO^{-}_{3 (aq)} + AgCl_{(s)}$ - $Na, NO_3$ are spectator ions, they are having no effect 
The equation simplifies to a net ionic equation:
$Ag^{+}_{(aq)} + Cl^{-}_{(aq)} \rightarrow AgCl_{(s)}$
