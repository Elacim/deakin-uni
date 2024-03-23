**Links**
- [[Confidence intervals]] 
- [[Statistical significance]] 
- [[Hypothesis testing]] 

Why is $q$ the inverse of $p$? :: $q$ is the inverse of the given probability, or NOT $p$. This is especially applicable for proportions where there are only two probabilities ($p$ and $q$)

• Independence Assumptions:
• Randomisation Condition: The data in each group should be
drawn independently and at random from the population or
obtained from randomised comparative experiment.
•The 10% Condition: If the data are sampled without
replacement, the sample should not exceed 10% of the
population.
• Independent Groups Assumption: The two groups we're
comparing must be independent of each other.

What is the distribution of a large enough sample? :: Bell-curve, or normal distribution

What is implicated when the $H_{0}$ is rejected? :: That the tested value is statistically significant; you have found something 'new'

#### Two proportions equation
https://statskingdom.com/121proportion_normal2.html
$(\hat{p_{1}} - \hat{p_{2}}) \pm z^{*} \times$ $\sqrt{  \frac{\hat{p_{1}} \hat{q_{1}}}{n_{1}}  +  \frac{\hat{p_{2}} \hat{q_{2}}}{n_{2}}  }$

The $\sqrt{}$ stuff is the standard error

Why are counts pooled ($\hat{p}_{pooled}$)? :: Given no difference in a typical hypothesis test ($H_{0} : p_{1} - p_{2} = 0$), this means the $\sigma$ for each $p$ are the same
What does pooling mean? :: The counts are pooled (combined) for the purpose of obtaining on overall proportion 
$\hat{p}_{pooled} = \frac{ Success_{1} + Success_{2} }{ n_{1} + n_{2} }$
$Success_{1} = n_{1} \hat{p_{1}}$
$Success_{2} = n_{2} \hat{p_{2}}$
You can then put the pooled values into the two-proportions equation


One prop:
	One categorical
	e.g. left-handed (p and q)
Two prop:
	One categorical
	e.g. left-handed people
		Males (p1, q1)
		Females (p2, q2)

What test is needed for when there are more than 1 categorical variables? :: Chi-square tests
### Chi-square tests
Used only for testing [[Hypothesis testing]], [[Confidence intervals]] don't apply
The arrived at p-value gotten from the $\chi$ test will be large and not small if the observed counts don't match the expected
	$\chi$ test is always one-sided
	Large value = rejected $H_{0}$

![[Week 7 - Lecture - Class slides.pdf#page=16]]

It is inference for 1-2 proportions for qualitative/categorical data
Hypothesis tests can determine:
	- evidence of associations/relationships between two variables
	- if data for one variable is consistent with a particular model/ratio

What is a goodness-of-fit test? :: A test to determine if the counts of one categorical variable matches a given model

W = white feathers; w = dark feathers
L = large comb; l = small comb

| Type  | Num. of offspring |
| ----- | ----------------- |
| A: Wl | 111               |
| B: WL | 37                |
| C: wl | 34                |
| D: wL | 8                 |
|       | 190                  |

$\text{Expected count} = \frac{ \text{row total} \times \text{column total} }{ \text{ total observations (n) } }$
Given the genetic model of `9:3:3:1`, how close is this data to the model?
A: $\frac{9}{16} \times 190 = 106.9$
B: $\frac{3}{16} \times 190 = 35.6$
C: $\frac{3}{16} \times 190 = 35.6$
D: $\frac{1}{16} \times 190 = 11.9$
Relatively close.
For a model to be successful, you need to fulfil some conditions:
1. The data are counts for a categorical variable
2. The counts/cell are independent of each other
3. There must be enough data (expected to be $\geq 5$/cell)

Chi-square formula :: $\chi ^{2} = \sum\limits_{\text{all cells}} \frac{ ( \text{Observed} - \text{Expected} )^{2} }{ \text{Expected} }$
$\frac{ (111 - 106.9)^{2} }{ 106.9 }$ + $\frac{ (37 - 35.6)^{2} }{ 35.6 }$ + $\frac{ (34 - 35.6)^{2} }{ 35.6 }$ + $\frac{ (8 - 11.9)^{2} }{ 11.9 }$ = $1.5623673188$
Degrees of freedom ($DF$) = $\text{cell count} - 1$
Looking up your $\chi^{2}$ on a chi-square -> p-value table, you can find the general p-value. If it's not there, find the direction it's going and say "P-value is high/low"
https://statskingdom.com/310GoodnessChi.html


When doing independence tests (I think two columns and two rows), use the `Independence (Association)` thing instead of `Goodness-of-fit`
