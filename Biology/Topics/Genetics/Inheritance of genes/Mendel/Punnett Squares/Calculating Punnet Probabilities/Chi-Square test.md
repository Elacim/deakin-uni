#genetics-and-genomics/calculating-punnet-probabilities #sle254/week-1
###### Links

$\chi ^{2} = \sum\limits \frac{(o-e)^{2}}{e}$

Purpose of chi-square test :: To reject or accept null hypothesis

When we assume data will fit a given ratio, we establish a null hypothesis

Null hypothesis assumptions :: No difference between measured values and predicted values, i.e. it is the expected ratio

**Assuming the null hypothesis is the expected outcome,**
**to reject the null hypothesis, our $\chi ^{2}$ value should be *greater than* the critical chi-square value**

##### Monohybrid (3:1) example with steps
A cross between two pea plants yields a population of 880 plants, 639 with green seeds and 241 with yellow seeds. You are asked to propose the genotypes of the parents.

**Step 1:** State the hypothesis being tested and the predicted results
- Hypothesis: the allele for green is dominant to the allele for yellow and that the parent plants were both heterozygous for this trait
Here we're testing for a 3:1 cross. If the null hypothesis is rejected, the **predicted** ratio would be 3:1.


**Step 2:** Determine the expected numbers for each observational class
- If the ratio is 3:1 and the total number of observed individuals is 880, then the expected numerical values should be 660 green and 220 yellow

**Step 3:** Calculate $\chi ^{2}$

|            | Observed | Expected |
| ---------- | -------- | -------- |
| **Green**  | 639      | 660      |
| **Yellow** | 241      | 220      |

$\chi ^{2} = \sum\limits \frac{(o-e)^{2}}{e} + \frac{(o-e)^{2}}{e}$
$\to 0.668 + 2 = 2.668$


**Step 4:** Determine degrees of freedom and locate the value in the appropriate column
- There are two categories (green and yellow); therefore, there is 1 degree of freedom

**Step 5:** Use the chi-square distribution table to determine significance of the value.
- Locate the value closest to your calculated $\chi ^{2}$ on that degrees of freedom (df) row
- Move up the column to determine the p value

Assuming the null hypothesis is the expected outcome,
to reject the null hypothesis, our $\chi ^{2}$ value should be *greater than* the critical chi-square value.

The p-value is the probability that you would get your $\chi ^{2}$ value if the null hypothesis was true.
$0.05 = \frac{1}{20}$ of a type 1 error (i.e. false positive)
$0.01 = \frac{1}{100}$
$0.001 = \frac{1}{1000}$

![[Chi-Square test.png]]

#### Corn example
A large ear of corn has a total of 433 grains, including 271 Purple & Smooth (A in picture), 73 Purple & Shrunken (B in picture), 63 Yellow & Smooth (C in picture), and 26 Yellow & Shrunken (D in picture).

**Null hypothesis:** This ear of corn was produced by a dihybrid cross (PpSs x PpSs) involving two pairs of heterozygous genes resulting in a theoretical (expected) ratio of 9 purple, smooth:3 purple, shrunken:3 yellow, smooth:1 yellow, shrunken.

