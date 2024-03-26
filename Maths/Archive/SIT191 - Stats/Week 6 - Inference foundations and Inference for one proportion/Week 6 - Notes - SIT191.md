Can inferences be made from one sample? How/how not? :: Inferences from one sample can be made by examining the distribution of all possible samples

From the information tied to the sample, point estimates of the unknown parameter can be obtained

Confidence intervals are found from .... :: Point estimates

$N( p,  \sqrt{ \frac{pq}{n} })$
In $N( p,  \sqrt{ \frac{pq}{n} })$, what does $p$ stand for? :: The true proportion of the population
In $N( p,  \sqrt{ \frac{pq}{n} })$, what does $n$ stand for? :: The sample size

What is rolling 5 dice 10,000 times in $N( p,  \sqrt{ \frac{pq}{n} })$? :: $5(p, \sqrt{ \frac{pq}{10,000} })$

Qualitative data is in terms of proportion (e.g. 36% of left-handed people) 


#question why does the $n-1$ in standard deviation cause it to be sample and not population based?

?? Sampling distribution

What is precision? :: How tightly the data is clumped together
What is accuracy? :: How close the data is to the correct answer (mean, true proportion etc.)

How is the sampling distribution of a given mean affected when the sample size is increased? :: It becomes more and more normal (i.e. more bell shaped)
Would a linear line, given enough samples, display a bell curve shape? :: probs, SLIDE 10b
Central Limit Theorem :: 
What does CLT stand for? :: The Central Limit Theorem

### Assumptions and conditions
1. Randomisation Condition: The sample should be a simple random sample of the population.
2. 10% Condition: If sampling has not been made with replacement, then the sample size, n, must be no larger than 10% of the population.
3. The sample needs to large enough (slightly )
4. Success/Failure Condition: The sample size has to be big enough so that both $np$ (successes) and $nq$ (failures) are $>= 10$
	1. 


### Standard Error

Proportion: $SD(\hat{p}) = \sqrt{\frac{pq}{n}}$
Means: $SD(\bar{y}) = \frac{\sigma}{\sqrt{n}}$

By going out two standard errors of $\hat{p}$, there is $95\%$ confidence the true proportion ($p$) will be got

Max: 20°C
99.7%: -5C to 40C
68%: 5C to 30C

$SE(\hat{p}) = \sqrt{ \frac{\hat{p} \hat{q}}{n} }$

#### Confidence intervals
What is a confidence interval? :: The level of certainty of the taken measurements (e.g. $1mL \pm 0.5mL$ or $10cm \pm 0.05cm$)
Are there any downsides to being more confident with readings? :: Yes, the precision goes down, meaning that if you have a large range (like 0°C to 40°C), you will be correct a lot of the time but inaccurate (the information is not useful)
How can 

What is the general format (kinda like a formula) for confidence intervals? :: $\text{estimate} \pm \text{margin of error}$

How is 95% confidence stated? :: $\hat{p} \pm 2SE(\hat{p})$

One proportion: $\hat{p} \pm z^{*} \times \sqrt{ \frac{\hat{p} \hat{q}}{ n }}$

What is the z-value? :: It is an end-marker for the region (left-to-right)
What z-value corresponds to a small area of a standard normal curve? :: A negative z value
What z-value corresponds to a large area of a standard normal curve? :: A positive z value


What does the critical value ($z^{*}$) depend on? :: The chosen/specified confidence level ($\hat{p}$)
You can find the area of the standard curve by using the formula: $\text{Area} = \frac{1 \text{ } + \text{ confidence interval}}{2}$
Critical values ($z^{*}$): find from the z-table using the found $\text{Area}$ value
95%: 1.96

If 11% of 100 people have a certain gene, what percent of the population would have the gene? Construct a 95% confidence interval for the actual percentage of the population with the gene
https://www.statskingdom.com/proportion-confidence-interval-calculator.html
$\hat{p} = 11\%$
$\hat{q} = 100-\hat{p} = 89\%$
$n=100$
$z^{*} = 1.96$
$0.11 \pm 1.96 \times \sqrt{ \frac{ 0.11 \times 0.89 }{ 100 } }$
$x^{+} = 0.11 + 0.061 = 0.171$
$x^{-} = 0.11 - 0.061=0.049$
We are 95% confident that between $4.9\%..17.1\%$ of the people have this particular gene.

From a survey of 283 randomly selected adults
$0.22 \pm 1.645 \times \sqrt{ \frac{0.22 \times 0.78 }{ 283 } }$
$x^{+} = 0.22 - 0.04051 = 0.2605$
$x^{-} = 0.22 - 0.04051 = 0.1795$
We are $90\%$ confident that the true proportion of adults who smoke is between $17.95\%..26.05\%$


What does the p-value tell us? :: It is the probability of the observed results occurring if the null hypothesis is true
W

What is the one-proportion z-test formula the same as? :: The one-proportion z-interval

Syntax for the null hypothesis cutoff parameter :: $H_{0} : p = \text{number}$
What does $H_{0}:p = 0.1$ indicate? :: The null hypothesis parameter value
$H_{A} : p < 0.20$


P-value: Lookup normal table
Find probability from z-value
P-value < $\alpha$: reject null hypothesis

One sample proportion test (no. 14 in statskingdom)

$p_{0}$ and $q_{0}$ are the initial/original study
$\hat{p}$ and $\hat{q}$ are the new/current study that we are performing

1 sided test
2 sided test - you're testing two sides (of the bell curve) so $p$-value is doubled
