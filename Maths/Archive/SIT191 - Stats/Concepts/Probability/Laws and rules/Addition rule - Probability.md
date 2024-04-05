#probability/laws-and-rules/addition
**Links**
- [[Laws and rules]] 
- [[Multiplication rule (probability)]] 
****
What is the addition rule? :: The culminative addition of disjoint events
What is a requirement for the addition rule? :: The probabilities must be from disjointed events

Meaning of $P(A \cup B)$ :: The addition rule -> $P(A \text{ || } B) = P(A) + P(B)$
###### [[Complements]]
##### General addition rule
Formula for the general addition rule :: $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
How does the general addition formula calculate the probabilities correctly? :: It removes the overlap between the given probabilities (i.e. prevents double counting)

![[Venn diagram - 52 cards - diamonds and faces.png|300]]
The number of cards in a deck is 52. There are 13 cards/suit (heart, club, spade, and diamond).
The probability of getting a card with a diamond on it is $\frac{13}{52} = 0.25 = 25\%$
Getting a diamond without it being a face card (King/Queen/Jack) is $\frac{10}{52} = 0.1923 = 19.23\%$
Getting a diamond and it being a face card too is $\frac{3}{52} = 0.0577 = 5.77\%$
Getting a face card without it being a diamond is $\frac{9}{52} = 0.1731 = 17.31\%$

Calculating $P(\Diamond \cup \text{face card})$:
	$P(\Diamond) + P(\text{face card}) - P(\Diamond \cap \text{face card})$
		Probability of diamond + the face card - the probability of both happening

Given $P(A)$ and $P(B)$ (both disjoint), what is $P(A \cap B)$? :: $0$. If the events are disjointed, they can never both be occurring, therefore the probability of both occurring is $0$. 