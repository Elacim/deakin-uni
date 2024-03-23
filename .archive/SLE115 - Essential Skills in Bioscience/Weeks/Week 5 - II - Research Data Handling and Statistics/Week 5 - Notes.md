### Statistics
Quantitative - quantity, numbered
Qualitative - quality something has, categories

Discrete variables - 0+ integer value
	- e.g. salmon count / breeding season
Continuous variables - any value (likely not negative), can take on any value
	- e.g. weight of a rat / month

Nominal variables - used to name variables (labels)
	- e.g. gender, hair colour, city
Ordinal variables - counted and ordered, can't be measured
	- e.g. 'How satisfied are you with our service (from 1 being least-5 being most)'

Bar graph - useful for discrete variables (gaps between entries)
Histogram - best for continuous variables (no gaps between entries)
Scatter plots/XY graphs - when pairs of observations are obtained
Pie graph - displaying percentages/proportions (probably don't use unless specified)

#### Standard deviation
- Sample ($\div n-1$) $\sigma = \sqrt{\frac{\Sigma (x_i-\bar{x})^2}{n-1}}$
- Population ($\div n$) $\sigma = \sqrt{\frac{\Sigma (x_i-\bar{x})^2}{n}}$
- Measure of data variability for which is usually normally distributed
- Works best for bell curves
- 68:95:99 rule
- Calculates the distance between the mean and a given data point
	- Like taking a `distance_to()` - $(x_i-\bar{x})^2$

#### Standard Error of the Mean (SEM)
- indication of how close a sample mean may be to the larger population mean
- sample mean is likely to vary from the whole population mean
- Larger samples = tighter SEM
- $SEM=\frac{\sigma}{\sqrt{n}}$

#### Co-efficient of variation (CV)
- compare sample variability from populations with different means
- $CV=\frac{\sigma}{\bar{x}}$
Bandicoot weight over time table:

| Time    | Mean | SD    | CV   | CV % |
| ------- | ---- | ----- | ---- | ---- |
| Day 1   | 2g   | 0.34g | 0.17 | 17%  |
| Week 5  | 10g  | 2.4g  | 0.24 | 24%  |
| Week 10 | 15g  | 3.9g  | 0.26 | 26%  |
|         |      |       |      |      |
Over time, some may get higher access to nutrients, leading to a higher variability over time

Mean minimises sum of squared deviations


### Sum of Squares (SS/TSS)
$SS=\sum\limits^{n}_{i=1}(y_{i}-\bar{y})^2$
Data set: $\{2,6,8,3,7,9,1,4\}$ ($n=8)$)
1. Calculate mean ($\bar{x} = \frac{40}{8}=5$)
2. Find deviation scores of each in set by subtracting the mean
	1. $\{ 2-5, 6-5, 8-5, 3-5, 7-5, 9-5, 1-5, 4-5 \}$
		1. $=\{ -3, 1, 3, -2, 2, 4, -4, -1  \}$
3. Square each deviation score
	1. $\{9, 1, 9, 4, 4, 16, 16, 1\}$
4. Add the squared deviation scores to find the **Sum of Squares (SS)**
	1. 9+1+9+4+4+16+16+1 = 60

#### Variance - $\sigma^2$
$\sigma^{2}=\frac{\sum(y_{i}-\bar{y})^2}{n-1}$
Exactly the same as calculating $\sigma$ (standard deviation) but without the $\sqrt{...}$ 
1. Find the [[#Sum of Squares (SS)]]
	1. $\{2,6,8,3,7,9,1,4\}$ ($n=8)$)
		1. $SS$ = 60
2. Find the variance by dividing $\frac{SS}{n-1}$
	1. $\frac{60}{8-1}=8.57$


When multiplying/dividing sig figs, choose the lowest amount of sig figs
When adding/subtracting sig figs, choose the least amount of decimal places (regardless of sig figs)