**Links**
- [[Confidence intervals]] 

t-test requires t-tables - [[T-tables.pdf]]

 mean confidence interval
One mean formula: $\bar{y} \pm t_{n-1}^{*} \times \frac{s}{ \sqrt{n} }$
$\bar{y}$ : Mean
$t^{*}_{n-1}$ : Critical value
$s$ : Standard deviation
Once both are calculated, we get a confidence interval, then,
	State: We are x% confident that the average count of y is between \[lower interval, high interval]

Finding $t^{*}_{n-1}$:
	1. Find the degrees of freedom ($n-1$)
	2. Find the confidence value (e.g. 95%)
	3. Match these up on the [[T-tables.pdf]]

https://www.statskingdom.com/paired-t-test-calculator.html


Steps to one sample t-test: 
	[One sample mean test online calculator](https://www.statskingdom.com/130MeanT1.html)
	Hypothesis 
	Find test-statistic
		$t = \frac{ \bar{y} - \mu_{0} }{ \frac{s}{ \sqrt{n} } }$
	Using the [[T-tables.pdf]], find the P-value
		If $t$ is out-of-range of the table, we know the P-value is low/high
			e.g. p-value (non-specific mention) is less than the alpha 
				The higher it is, more confident
	Compare p value with alpha level
	Conclusion

Gosset's $t$ (test) is used for quantitative data

Student t-models = unimodal, bell-shaped
t-models with few DF -> fatter tails than normal

What does a t-model with infinite degrees of freedom look like? :: Exactly like a normal curve

t-test has the independence assumption, randomisation condition, and 10% sample condition, and the nearly normal condition

Nearly normal condition
	- Data is from a unimodal and symmetric distribution
	- Smaller sample sizes ($\approx n<15$)
	- Moderate sample sizes ($n=15..40$) lets the $t$ work well so long as the data is unimodal and reasonably symmetric
	- For large sample sizes ($n>40,50$), $t$ is safe to use due to CLT(?) unless the data are extremely skewed

