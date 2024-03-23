#probability/terminology

Sample space :: The set of all possible outcomes e.g. a dice has a sample space of `{1, 2, 3, 4, 5, 6}`

#### [[Conditional probability]] 
Conditional probability formula :: $P(A|B) = \frac{ P(A \& B) }{ P(B) } = P(A)$
$P(\text{probability of } A \text{ given } B \text{ having occurred})$

What does the $|$ mean in $P(A|B)$? :: It simply means the probability of $A$ given $B$ being guaranteed to have occurred

What does 'the probability of $A$ given $B$' mean? :: The probability that $A$ occurs when $B$ is known to have occurred 

Replacement meaning :: When choosing something, the odds remain the same (e.g. $1: \frac{1}{15}$ then $2: \frac{1}{15}$); the result from $1$ is recounted
Without replacement meaning :: When choosing something, the odds shift (e.g. $1: \frac{14}{15}$ then $2: \frac{13}{14}$); the result from $1$ isn't recounted

### Types
(1/2) What is marginal probability? ::: (2/2) Term for a probability of an outcome being determined by a single variable
	Remember by thinking of it as marginal - barely at the margin of zero
(1/2) What is joint probability? :: (2/2) Term for the probability of outcomes being determined by two or more variables
How are marginal and joint probabilities related? :: They reference the probability of an outcome based on variable(s)
How are marginal and joint probabilities different? :: They differ in the number of variables used (marginal being 1, joint being 2+) 

#### Complements
What does an event's complement (e.g. $P(D^{c})$) mean in regards to probability? :: It is the whole sample space minus the given event, e.g. $P(D)=$`{1, 2, 4, 6}` and $P(D^{c}) =$ `{3, 5}` 
Symbol for an event's complement (use $P(D)$) :: $P(D^{c})$

#### And/or
How to write $\cap$ in latex? :: `$\cap$`
How to write $\cup$ in latex? :: `$\cup$`
Meaning of $\cap$ :: 'and'
Meaning of $\cup$ :: 'or'
If I say a probability symbol is a toss up, what symbol is this referring to? :: The 'or' symbol $\cup$
If I say a probability symbol is containing things, what symbol is this referring to? :: The 'and' symbol $\cap$

