Two means - quantitative data for two groups
	e.g. height of males compared to females
Tests for a difference between two groups
	Must be independent of each other

t-table requires [[Confidence intervals]] 

[[Hypothesis testing]]
	instead of $p_{1} > p_{2}$, do $\mu_{1} > \mu_{2}$
	$H_{0}: \mu_{1} = \mu_2$ (no difference)
	$H_{A}: \mu_{1} \neq \mu_2$ (there is a difference)


Equation for Degrees of freedom for two means :: $DF = n_{1} + n_{2} - 2$
$(\bar{y_{1}} - \bar{y_{2}}) \pm t^{*}_{n_{1} + n_{2} - 2} \times \sqrt{ \frac{ (\sigma_{1})^{2}} {n_{1}} + \frac{ (\sigma_{2})^{2}}{n_{2} } }$
A negative result says there is no difference
	e.g. $[-0.07, 1.67]$
	We are 95% confident that the mean difference in mean cholesterol levels is between $-0.07$ and $1.67$mm/mol
		If zero is in the confidence interval range (e.g. -0.07..1.67, there is a zero between the min/max values), the null hypothesis is guaranteed to fail to be rejected

$t = \frac{(\bar{y_{1}} - \bar{y_{2}})} {\sqrt{ \frac{ (\sigma_{1})^{2}} {n_{1}} + \frac{ (\sigma_{2})^{2}}{n_{2} } }}$ - lookup on t-table to find approximate p-value (the value at the top of the columns, e.g. 0.10..0.05)
	Using this value, determine fail/succeed in rejecting null hypothesis


**Mean difference, two means, statskingdom, calculator**
https://statskingdom.com/difference-confidence-interval-calculator.html

#### Two means
Comparing assignment 1 results for one prac group vs. another -> **two means**
Comparing individual student's assignment 1 and 2 results -> **paired means**
Investigating muscle mass change for individuals before and after a strength exercise program -> **paired means**
Comparing cat and dog cholesterol -> **two means**
Comparing proportion of female vs female who passed a subject -> **two proportions**

Convention says to put the group with the lower mean as group 1 and the higher mean as group 2

