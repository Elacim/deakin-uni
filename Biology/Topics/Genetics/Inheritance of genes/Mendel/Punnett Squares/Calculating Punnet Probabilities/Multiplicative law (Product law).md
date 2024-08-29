#genetics-and-genomics/calculating-punnet-probabilities
###### Links
```dataview
LIST
FROM #genetics-and-genomics/calculating-punnet-probabilities
```

Independent events can be multiplied (coin flips, dice rolls)

Picking an ace out of a deck of cards, returning it AND picking a six out of the deck. $\frac{4}{52} \to \frac{1}{13} \times \frac{1}{13} = \frac{1}{169}$


**What is the probability that `AaBbCc x AaBBCC` will result in `AaBbCc`?**
?
![[Week 1 - Notes - SLE254 - Punnett Probabilities.png]]
In other words: What is the probability that we get `Aa` $\ce{AND}$ `Bb` $\ce{AND}$ `Cc`
$\frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} = \frac{1}{8}$ of getting `AaBbCc`



[[SLE254 Lecture 3 - Gene inheritance and transmission_1PP.pdf#page=21&selection=0,0,0,1|SLE254 Lecture 3 - Gene inheritance and transmission_1PP, page 21]]
What is the probability of heterozygous freckles (`Ff`) and widows peak (`Ww`), and no dimples (`dd`) mixed with heterozygous freckles (`Ff`) and dimples (`Dd`), and a continuous hairline (`ww`) giving no freckles, a continuous hairline, and no dimples (`ffwwdd`)
?
Probability of `FfWwdd x FfwwDd` giving `ffwwdd`?
We follow the Multiplicative law (Product law):
- `Ff x Ff` = $\frac{1}{4}$ of giving `ff`
- `Ww x ww` = $\frac{1}{2}$ of giving `ww`
- `dd x Dd` = $\frac{1}{2}$ of giving `dd`
$\frac{1}{4} \times \frac{1}{2} \times \frac{1}{2} = \frac{1}{16}$

