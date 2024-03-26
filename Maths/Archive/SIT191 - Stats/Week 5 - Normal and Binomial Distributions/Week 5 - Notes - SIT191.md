Comparing standard deviations from is not completely valid.

Male avg/height = 1.78;  STD=8cm=0.08
Female avg/height = 1.62;  STD=5cm=0.05m
We have a male with a height of 1.91m and a female with 1.73m height.

To standardise a score, you should calculate the z-score.
What is a z-score? :: A standardised form of standard deviation
Formula for z-score :: $\frac{ X - \mu }{ \sigma }$  ($X$ being the value you want to check)
What does a negative z-score indicate? :: The data value is below the mean
What does a positive z-score indicate? :: The data value is above the mean

$Z_{males} = \frac{ 1.91 - 1.78 }{ 0.08 } = 1.625$
$Z_{females} = \frac{ 1.73 - 1.62}{ 0.05 } = 2.2$
Females have a higher z-score, meaning that the data deviates more from the mean

Z-SCORE INFO 5b-6a

**Shifting data**
Adding or subtracting constants shifts the measures of position (centre/max/min/quartiles) by that constant
	Shape/spread (range, IQR, $\sigma$) are unchanged

**Rescaling data**
Multiplying or dividing by constants scales all the measures of position (centre/max/min/quartiles) and measures of spread (range, IQR, $\sigma$) by that constant

What tool would you use to do unit conversion (e.g. Kg to Pounds) on a dataset (think histogram)? :: Rescaling (dividing/multiplying) 
What tool would you use to make things fairer (e.g. Most maths subjects proportionally increased up due to difficulty) on a dataset (think histogram)? :: Rescaling (dividing/multiplying) 

What does normal distribution mean? :: The data is in a bell-curve shape and therefore follows the 68-95-99.7% rule
What is normally distributed data? :: Data that is symmetrical with no skew; the data follows the 68-95-99.7% rule
Notation for a normal model :: $N(\mu, \sigma)$
What exists for any which combination of mean and standard deviation? :: A normal model
What does $N(0, 1)$ represent? :: A standard(ised) normal model, also known as the standard normal distribution
What do normal models help us achieve? :: The determining of how extreme a value is given the probability of finding the value from the mean

What does the 68-95-99.7% rule tell us? :: That 68% of the values in a given dataset are within one standard deviation of the mean, 95% two SDs, ad 99.7% within 3 SDs
Is the 68-95-99.7% rule always the truth? :: It is an observation that tends to follow reality. Any piece of data can fall multiple SDs out the mean and are likely considered as outliers
Percentages of a bell-shaped curve :: 68-95-99.7%

In one half of a bell-curve, what are all the percentages? :: $0.15\%, 2.35\%, 13.5\%, 34\%$

What is the percentage for 1 SD? :: $34\%$
What is the percentage for 2 SDs? :: $13.5\%$
What is the percentage for 3 SDs? :: $2.35\%$
What is the percentage for 4 SDs? :: $0.15\%$


Smaller than 4mm
$Z=\frac{X-\mu}{\sigma}$
$\frac{4-6.1}{1.3}$
What does a normal table tell us? :: The percentage of a given z-score occurring 
How do we convert a z-score into a percentage? :: Look the z-score up in a normal table

Shortest 25%:
1. Lookup normal table and find the percentage closest to the given
	1. From the percentage, you should be able to see the z-score
2. Rearrange the z-score formula to find $X$
	1. $X = Z \times \sigma + \mu$
3. The percentage tells us that below/above $X$ are the lowest/highest percent of this dataset



**Binomial distribution**
Purpose of binomial models :: 

Bernoulli trial :: A trial with only two possible outcomes; probability is constant; trials are independent
10% condition for Bernoulli trials :: If the trial is not independent, the sample must be smaller than 10% of the population ($p$, probability, remains ~constant)
Definition of a binomial model :: $\text{Binom(n, p)}$
What does $n$ represent in a binomial model? :: The number of trials
What does $p$ represent in a binomial model? :: The probability of success
Mean of a binomial model :: $\mu = n p$
Standard deviation of a binomial model :: $\sigma = \sqrt{npq}$

SLIDE 14b-15a

$q = 1 - p$ = probability of failure
$X$ = number of successes in $n$ trials
$(\frac{n}{x} = \frac{n!}{x!(n-x)!})$
$^{8}C_{3} = \frac{8!}{3! \times 5!}$

Probability of a plant species growing from a cutting is $0.4$ ($p$), if 5 cuttings are planted, what is the probability that:
a) Exactly 3 cuttings will grow
$P(x=3) =$ $^{5}C_{3}(0.4)^{3} \times (0.6)^{5-3}$
$C = \frac{5!}{3! * (5-3)!} = 10$
$P(x=3) =10 \times 0.064 \times 0.36 = 23.04\%$

$P(x=?) = ^{n}C_{x} p^{x} q^{n-x}$

b) At least 1 cutting will grow
Since 1..5 is valid, only calculate for $x=0$
$1 - P(x=0)$
The probability of $x=0$ is subtracted from the total probability of $1$
$P(x=0) = ^{5}C_{0} (0.4)^{0} (0.6)^{5-0}$
$= 1 \times 1 \times 0.6^{5} = 0.07776$
$1-0.07776 = 0.92224$

![[Plant cutting (b) stats-kingdom example.png|200]]
StatsKingdom - Binomial distribution - https://statskingdom.com/distribution-calculator.html


**Normal approximation to the binomial distribution**
Expected number of cuttings to grow:

Probability of >= 50 cuttings growing:
Instead of using that $P(x=x)$ equation, use a z-score for an approximation
$z=\frac{ 50_{X} - 40_{mean} }{ 4.9_{\sigma} } = 2.04$
Looking in the z-table, the percent is $0.9793$. So, subtracting this from 1, we get $1-0.9793 = 2.07\%$. This is an approximation of the probability of >=50 cuttings growing. The actual probability is $2.71\%$.

In an area of rural Vic, 80% of learners pass the test on their first try.
a) If 8 learners are selected, what is the probability of a successful driving test for:
	i) All drivers
		$P(x=8)$
	ii) 0 or 1 drivers
		$P(x=0) + P(x=1)$
	iii) >=2 drivers
		$1 - ( P(x=0) + P(x=1) )$
b) For 120 learner drivers being selected
	i) How many, on average, would be expected to pass? Compute the standard deviation.
	$\mu = np$; $\sigma = \sqrt{npq}$
ii) What is the probability that more than 100 drivers pass?
		$P(x>100) = P(x=101) + P(x=102).. P(x=120)$

