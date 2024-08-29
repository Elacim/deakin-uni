#genetics-and-genomics/calculating-punnet-probabilities
###### Links
- [[Mendel]]
- [[Calculating Punnett Probabilities]]
- [[Chi-Square test]]
- [Calculator for Binomial probability](https://stattrek.com/online-calculator/binomial)

Used to... :: Calculate probability where there are alternative ways to achieve a combination of events
Sum of probabilities for alternative events equals one: $(p+q=1)$

Not needed when only dealing with one allele

Theorem :: $\frac{n!}{x!(n-x)!} \times p^{x}q^{n-x}$
$n$ = Total number of events
$x$ = number of times event $A$ occurs 
$(n-x)$ = number of times event $B$ occurs


**Example - In a family of 6 children what is the probability of having exactly 5 girls and 1 boy?**
1. Calculate individual probabilities
	1. $p = \frac{1}{2}$ (probability of event, girl)
	2. $q = \frac{1}{2}$ (boy)
2. Determine the number of events
	1. $n = 6$ children
	2. $x = 5$ girls (Event $A$)
	2. $n-x = 1$ boy (Event $B$)
3. Substitute into equation
	1. $\frac{6!}{5!(1)!} \times \frac{1}{2}^{5} \times  \frac{1}{2}^{1}$
	1. $\frac{720}{120} \times 0.03125 \times  \frac{1}{2}$
	1. $3 \times 0.03125$
	2. $=0.09375 = \frac{3}{32}$
4. Interpret
	1. $\frac{3}{32}$ families with 6 children will have 5 girls then 1 boy

