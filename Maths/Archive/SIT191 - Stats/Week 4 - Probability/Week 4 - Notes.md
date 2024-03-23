Random phenomena - where outcomes could happen but unsure
Upon observation, a random event is known as a.. :: Trial
When a random event is recorded and noted, it is known as an... :: Outcome
When events are combined, it is called an... :: Event
The collection of all possible outcomes are known as the... :: Sample space

Law of large numbers :: The relative frequency of repeated independent events gets closer and closer towards a single value, known as the probability of the event
Another name for law of large numbers :: Empirical probability
Is the law of averages real? :: No. After rolling a dice 8928 times, there is a 1/6 chance of rolling a certain value
What size data set is needed for relative frequencies to fully come into effect? :: An infinitely long one
Pros of independent events :: Probability calculations are simplified

Given two trials, what is the outcome and sample space of flipping a coin? :: The outcome is either heads or tails, and the sample space is `S = {H, H}  {T, T}  {H, T}  {T, H}`

Probability of an event formula ($P(A)$) :: $P(A)=\frac{ \text{number of outcomes in } A }{ \text{total number of outcomes} }$

What is a set in regards to probability? :: A collection of events/outcomes

What are the two requirements for a probability? :: That the number can be expressed in decimal ($0..1.0$) and that for a given event, the probability of an event is $0 \le P(\text{event}) \le 1$ (between or equal to 1 or 0)

#### Venn diagrams
What is the probability assignment rule? :: The total probability of all outcomes adds to $1$
What is the complement rule? :: Outcome events not in a given event are known as the complement of that event ($A^{c}$; $P(A) = 1 - P(A^{c})$)
What is the addition rule? :: The probability of one of two disjoint events occurring is $P(A \text{ || } B) = P(A) + P(B)$
What is the multiplication rule? :: The probability of two independent events occurring is $P(A \text{ \& } B) = P(A) \times P(B)$

Events with no outcomes in common cannot... :: Occur together
Events with no outcomes in common are known as.. :: Disjoint events / mutually exclusive
True or false: Disjoint events cannot be independent. :: True (though exceptions exist)

What are the limitations of the multiplication rule? :: It must be for independent events and it cannot be used for more than two independent events
What is a limitation of the addition rule? :: The events must be disjointed

What does $P(S)$ stand for? :: The probability of the sample space (should always equal $1$)

[[Laws and rules#Addition rule]]

What does a rectangle containing sets represent (e.g. containing sets $A$ and $B$)? :: The sample space 


What is the general addition rule? :: Non-disjointed events (events with outcomes in common) must have the non-disjointed minused from disjoint probabilities -> $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
Formula for the general addition rule ::: What is $P(A \cup B) = P(A) + P(B) - P(A \cap B)$ representing?
How is $P(A \cup B)$ found? :: $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

What does this diagram represent?<br>![[General addition rule - venn diagram.png|125]] :: The general addition rule -> $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

What does $P(A|B)$ mean? :: The probability of B given A (conditional distribution)
What is the formula for conditional distribution? :: $P(A|B)$
What is conditional probability? ::: Name for when a given condition is accounted for in the final probability 


| Outcome     | O    | AB   | A    | B    |
| ----------- | ---- | ---- | ---- | ---- |
| Probability | 0.45 | 0.04 | 0.40 | 0.11 |

Given four people:
- $P(\text{all are type O})$, $P(0.45)^{4} = 4.1\%$
 - No one is AB -> $P(0.4 + 0.11 + 0.45)^{4} = 81.54\%$
- All are type A -> $P(\text{all are type A}) = 0.40^{4}$
- $P(\text{second person only is type O})$ -> $P(\text{not O}) \times P(\text{O}) \times$ $P(\text{not O}) \times P(\text{not O})$ $= (0.04 + 0.40 + 0.11)^{3}$ $\times 0.45 = 7.5\%$
- at least one person is type B -> $(0.45 + 0.04 + 0.40)^{3} \times 0.11 = 7.75\%$
- they are not all type A -> $(0.11 + 0.04 + 0.45)^{3} \times 0.4$ $=8.65\%$


| X    | 1    | 2    | 3    | 4    | 5    |
| ---- | ---- | ---- | ---- | ---- | ---- |
| P(X) | 0.08 | 0.17 | 0.25 | 0.48 | 0.02 |
Mean = $(0.08 + 2(0.17) + 3(0.25) + 4(0.48) + 5(0.02))$
Variance ($\sigma ^{2}$) = $((1-3.19)^{2} * 0.08)+ ((2-3.19)^{2} * 0.17) + ((3-3.19)^{2} * 0.25)$ $+ ((4-3.19)^{2} * 0.48) + ((5-3.19)^{2} * 0.02)$ $= 1.0139$
Standard deviation ($\sigma$) = $\sqrt[2]{1.0139} = 1.0069260152 = 1.01$
