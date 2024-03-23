#flashcards/test
P-value :: When testing null hypotheses, this value is the probability of obtaining test results at least as extreme as the observed test results (e.g. 0.05 = 95% confidence); if $p<\alpha$, the test is significant [Source - Wikipedia](https://en.wikipedia.org/wiki/P-value)
$\alpha$ :: The probability of rejecting the null hypothesis when it is true (the significance level), usually set to a default of $0.05$ ($5\%$ meaning $95\%$ confidence must be achieved)  [Source - nlm](https://www.nlm.nih.gov/nichsr/stats_tutorial/section2/mod11_significance.html) 
t-test :: Compares means of two groups; helpful for determining if a hypothesised effect is being shown; 't-test' -> 'two-test' -> testing two means
	NOT GOOD FOR COMPARING TWO+ MEANS DUE TO 5% CHANCE OF FALSE POSITIVES
Unpaired t-test :: The comparison of the means of two separate samples (e.g. 10 of your chicken eggs' weight compared to next door farmer's chicken egg weight)
Paired t-test :: The comparison of the means using two observations on one sample (e.g. 10 chicken eggs mean weight one day then the next day)
One-sample t-test :: The comparison of a fixed mean to a single sample's mean (e.g. 10 your chicken's egg to national standard)
Two-tailed t-test :: You want to know if there is a difference (bidirectional ($\leftrightarrow$))
One-tailed t-test :: You want to know the direction of the difference (directional ($\leftarrow$ or $\rightarrow$))

Standard Error of the Mean (SEM) purpose :: Tells you how much the sample mean would vary if the study were repeated with new samples within a single population
Estimates the efficiency, accuracy, and consistency of a sample
Standard Error of the Mean (SEM) ::: An indication of the closeness of a sample's mean to the larger population; sample mean is likely to vary from population mean; larger samples give a tighter value
<!--SR:!2023-08-08,1,230-->
SEM formula :: $\frac{\sigma}{\sqrt{n}}$  (standard deviation over the root of the sample count)

Co-efficient of variation (CV) :: The comparison of sample variabilities from populations with differing means
Co-efficient of variation purpose :: To find how much the taken sample's $\sigma$ varies from populations with differing means (the extent of variability)
CV formula :: $\frac{\sigma}{\bar{x}}$ (standard deviation's ratio to the mean)


Regression analysis :: The quantification of the association between two variables (line of best fit - $y=mx+c$)

Chi-square ($\chi$) tests :: Measure of the difference between actual and expected frequencies (e.g. expected=$1:1$, observed=$0.38:0.62$)

Degrees of freedom formula :: $df=n-1$
What are degrees of freedom? :: Given 5 variables, when 4 of those variables are known, the last variable can be inferred

Correlation coefficient ($r$) :: -1.0 = perfect negative correlation, 0=perfect positive, 1.0 = perfect positive

Nominal :: Labelled categories with no clear order (like hair colour) - 'nominal', 'no', no order
Ordinal :: Categorical with a clear order (like 1st, 2nd, and 3rd place) - 'ordinal', ordered
