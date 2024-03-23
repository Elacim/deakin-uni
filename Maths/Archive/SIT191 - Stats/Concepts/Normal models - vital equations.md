$n$ = sample size
$p$ = probability
$q$ = $1 - p$

### Binomial model

Binomial/normal model: $\text{Binom}(n, p)$

What is a Bernoulli trial? :: The testing part of binomial distributions
Are Bernoulli trials independent or dependent? :: The trials are independent of each other
True or False: There are unlimited outcomes in Bernoulli trials. :: False. There can only be two possible outcomes
What characteristic must the probability of success display in a Bernoulli trial? :: The probability must be constant

###### Values to a binomial model
Find the average ($\mu$) and the standard deviation ($\sigma$).
Plug these into the


**Binomial probability model for Bernoulli trials ($\text{Binom}(n, p)$)**
Formula for $P(x=\text{trial number})$ :: $\frac{n!}{x!(n-x)!} \times p^{x} \times q^{n-x}$

Shorthand for finding the probability of $\sum P(x=\text{amount to test})$ :: $1 - P(x=0)$

How could $P(x=1) + P(x=2) + P(x=3) + P(x=4) + P(x=5)$ be condensed ($1$ being the minimum and $5$ being the maximum? :: $1 - P(x=0)$

#### Cutting questions
###### Small sample ($p=0.4$, $q=0.6$, and $n=5$)
What is the probability that exactly $3$ cuttings will grow?
?
$P(x=3) = \frac{ 5! }{ 3! \times (5 - 3)! }  \times 0.4^{3} \times 0.6^{5-3}$
$\rightarrow 10 \times 0.064 \times 0.36 = 0.2304$
$= 23.04\%$

What is the probability that at least $1$ cutting will grow?
?
$P(x=1) + P(x=2) + P(x=3) + P(x=4) + P(x=5)$
or
$1 - P(x=0)$
$P(x=0) = \frac{ 5! }{ 0! \times (5-0)! } \times 0.4^{0} \times 0.6^{5-0}$
$\rightarrow 1 \times 1 \times 0.07776$
$\rightarrow 1 - 0.07776 = 0.92224$
$= 92.22\%$

###### Large sample ($p=0.4$, $q=0.6$, and $n=100$)
What is the expected number of cuttings that will grow successfully?
?
$X (\mu) = 100 \times 0.4 = 40$ cuttings

If $n=142$, what is the expected number of cuttings that will grow successfully?
?
$X (\mu) = 142 \times 0.4 = 56.8 = 56$ cuttings

What is the probability that at least 50 of the cuttings will grow?
?
$P(x=50) + P(x=51)..P(x=100)$ gives the most accurate answer ($2.71\%$). Approximation is good enough for a general idea though.
$\mu = 100 \times 0.4 = 40$ and $\sigma = \sqrt{ 100 \times 0.4 \times 0.6 } = 4.8989$
$Z = \frac{50-40}{4.89} = 2.045$ 
$\xrightarrow{\text{lookup table}} 97.93\%$
$\rightarrow 100 - 97.93 = 2.07\%$ probability that $\geq 50$ cuttings will grow 

##### Driving test ($p=0.8$ and $q=0.2$)
###### Questions where $n=8$
What is the probability of all 8 drivers succeeding? :: $P(x=8) = 16.78\%$

What is the probability of $0 || 1$ drivers succeeding? :: $P(x=0) + P(x=1) = 0.0000\%$ chance

What is the probability of $\geq 2$ drivers succeeding? :: $1 - [(Px=0) + P(x=1)] = 0.999 = 100\%$

###### Questions where $n=120$
On average, how many drivers would be expected to pass the test?
?
$\mu = 120 \times 0.8 = 96$ drivers would be expected to pass

What is the probability that more than $100$ drivers pass?
?
$P(x>100) \rightarrow P(x=101)..P(x=120)$
$= 15.17\%$
or
$\mu = 120 \times 0.8 = 96$
$\sigma = \sqrt{ 120 \times 0.8 \times 0.2 } = 4.382$
$Z= \frac{ 101 - 96 }{ 4.382 } = 1.141$
$\xrightarrow{\text{lookup table}} 87.29\%$
$100 - 87.29 = 12.71\%$
Probability $\approx 12.71\%$

### Normal distribution
What is the formula for finding $\sigma$ without the excessive amounts of formulae? (hint: involves sample size) :: $\sigma = \sqrt{npq}$
What is the formula for finding $\mu$ without the excessive amounts of formulae? (hint: involves sample size) :: $\mu = np$

Normal distribution model syntax :: $\text{N}(\mu, \sigma)$
$Z\text{-score}$ formula :: $Z = \frac{ X - \mu }{ \sigma }$


##### Worm example ($\mu$ = 6.1mm, $\sigma$ = 1.3mm) | [[NormalTables (z-table).pdf|Normal table]]
###### Finding the percentage of $X$ occurring
When the $Z$ score is gotten, check it against a [[NormalTables (z-table).pdf|normal table.]]
This normal table value tells us the percentage of a given $X$ value occurring.

What percentage of worms are longer than 8.7mm?
?
$Z = \frac{8.7\text{mm}-6.1\text{mm}}{1.3\text{mm}} = 2$
Normal table lookup value $\rightarrow 97.72\%$
$100 - 97.72\% = 2.28\%$ of worms are longer than 8.7mm

What percentage of worms are smaller than 4mm?
? 
$Z = \frac{ 4 - 6.1 }{ 1.3 } = -1.615$
Normal table lookup value $\rightarrow 0.0537$
$= 5.37\%$ of worms are smaller than 4mm

###### Finding the $X$ value from a percentage
From a percentage, you can find the $X$ value that borders said percentage.
Formula to find $X$ from a percentage ::  $X = Z \times \sigma + \mu$

Below what length are the shortest $25\%$ of worms?
?
Find the value closest to $25\%$ in the normal table.
In this case, it is $0.2514$ which corresponds to a $Z$ score of $-0.67$
Using this $Z$ score, calculate $X$: $X= -0.67 \times 1.3\text{mm} (\sigma) + 6.1\text{mm} (\mu)$
Worms below **$X = 5.229$mm** are the shortest $25\%$ of worms
