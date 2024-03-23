#probability/laws-and-rules/addition 
**Links**
- [[Laws and rules]] 
- [[Addition rule]] 

Meaning of $P(A \cap B)$ :: The multiplication rule -> $P(A \text{ \& } B) = P(A) \times P(B)$


##### 9% left-handers
###### n=5
What is the probability that all are left-handed? :: $0.09^{5} = 5.9e-6$
What is the probability that all are right-handed? :: $0.91^{5} = 0.624$
What is the probability that *not* all are right-handed? :: $1 - 0.91^{5} = 0.376$

###### n=3 and gender=50%
What is the probability that the first person is male and right-handed? :: $0.50 \times 0.91 = 0.455$

What is the probability that the first two people are male and right-handed? :: $(0.50 \times 0.91)^{2} = 0.207$

What is the probability that the third person is female and left-handed? :: $0.50 \times 0.09 = 0.045$

What is the probability that the first two people are male and right-handed and the third person is female and left-handed?
?
$(0.50 \times 0.91)^{2} \times (0.50 \times 0.09) = 9.32e-3$




### General multiplication rule
- [[Conditional probability]] 
$P(A \& B) = P(A|B) \times P(B)$

Given two percentages ($96.08\%$ not inoculated and $85.88\%$ of non-inoculated people surviving), what is the probability that someone was not inoculated and survived?
?
$P(\text{lived=true and inoculated = no})$
	$P(\text{lived=true | inoculated = no}) = 0.8588$
	$P(\text{inoculated = no}) = 0.9608)$
$P(A \& B) = 0.8588 \times 0.9608 = 0.8251$
