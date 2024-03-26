What does ANOVA test? :: To see if in 3+ populations that there is a significant difference between at least two of the group means
	- Such as testing 4 different drugs
	- Or comparing exam marks across three different schools

What test is used to compare multiple means? :: The $F$-test
What is the $F$-test? :: A ratio of variability between samples to the variability within samples
$F$-test hypothesis test format when all means are equal :: $\ce{ H0: \mu1 = \mu2 = .. = \mu _{x} }$
$F$-test hypothesis test when not all means are equal/at least two means differ :: $\ce{H_{A}}$
What happens if $\ce{H0}$ is rejected? :: **insert extra procedure**
F-test value > F-table value meaning? :: P-value is less than the alpha

On these boxplots, the means between the first and second figures are the exact same ($\ce{31, 36, 38, 31}$).
The second figure has very small variation *within* each of the groups.
The $F$-test compares the differences between means to these variations.
![[Week 10 - Notes - F-test explanation using averages.png]]

What can we do when the differences between means are large compared to in-group variation? :: The null hypothesis is rejected and the means are likely to not be equal

Smaller variance = means resemble each other more
Bigger variance = less mean resemblance; potentially treatments have an effect

Error Mean Square (Mean Square Within) symbol :: $MS_{E}$
What is the error mean square? :: The variance of [[Residuals]]
Is the error mean square pooled? :: Yes, it is a pooled variance - it can be written as $S^{2}_{p}$


Why use ANOVA


**ANOVA assumptions**
- Variances of treatment groups are approximately equal
	- No patterns
	- Roughly same spread
- Normal population assumption
	- Followed 