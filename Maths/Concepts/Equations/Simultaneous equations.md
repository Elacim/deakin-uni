**Links**
- [[Linear equations]] 
- [[Matrices to solve simultaneous equations]] 

**Table of contents**
	Solution types:
		- [[#Exactly one solution (the 2 lines intersect at a single point)]]
		- [[#No solution (the 2 lines are parallel, and hence don’t intersect)]]
		- [[#Infinitely many solutions (the 2 lines are identical)]]
	Solving:
		- [[#Substitution method]]
		- [[#Elimination method]]

You can add or subtract in the elimination method.
Unsure about rearranging them (subtracting equation 2 from 1) #question

```
-- Basic latex -- 
Taken from: https://tex.stackexchange.com/a/686763
$$
\left\{
  \begin{array}{l}
	item1  &\\
	item2  &\\
	item3  &\\
	etc..  &\\
\end{array}
\right.
$$
```

## Solution types (linear)
##### Exactly one solution (the 2 lines intersect at a single point)

$$
\left\{
  \begin{array}{l}
	2x+6y = 20  &\\
	5x+10y = 30  &\\
\end{array}
\right.
$$

###### Example plot
`plot(x+y=3,x-2y=6)=~?`


##### No solution (the 2 lines are parallel, and hence don’t intersect)

$$
\left\{
  \begin{array}{l}
	 12y+4x=22 &\\
	14x+42y=30  &\\
\end{array}
\right.
$$

###### Example plot
`plot(4x+12y=22,14x+42y=30)=~?`

##### Infinitely many solutions (the 2 lines are identical)
$$\left\{\begin{array}{l}
	2x+6y = 20 \rightarrow 2\times: 4x+12y=20  &\\
	4x+12y = 40
\end{array} = 0x + 0y = 0 \rightarrow \text{Identical lines}
\right. 
$$

###### Example plot
`plot(2x+6y=20,4x+12y=40)=~?`

The point where these two equations meet is the solution.



## Solving methods
#### Substitution method
$x - 2y = 6$
$x + y = 3$

1. From one of the equations, make one of the variables the subject
	1. $x - 2y = 6 \ce{->} x = 6 + 2y$
2. Substitute the modified equation into the other unmodified equation
	1. $x + y = 3$
	2. $(6 + 2y) + y = 3$
	3. $6 + 3y = 3$
3. Solve the new equation's only variable
	1. $6 + 3y = 3$
	2. $\cancel{6} + 3y = \cancel{3} -6$
	3. $\cancel{3}y = -3 / 3$
	4. $y = -1$
4. Substitute the now known variable into the step 1 equation
	1. $x = 6 + 2y$
	2. $x = 6 + 2(-1)$
	3. $x = 4$
5. Combine the $x$ and $y$ to find solution!
	1. $(4, -1)$

#### Elimination method
The finding of common factors to remove a variable in both the equations.
$$
\left\{
  \begin{array}{l}
    (1): y+x = 30 &\\
    (2): 4x+2y=100
\end{array}
\right.
$$

1. Multiply the equation
	1. $(1): 2\times: x + y = 30$
	2. $2x + 2y = 60$
2. Subtract from the other
	1. $$
\left\{
  \begin{array}{l}
    (2): 4x+2y=100  &\\
	\ce{minus} &\\\ 
    (1): 2x+2y = 60 &\\
	\rightarrow 2x = 40
\end{array}
\right.
$$
3. Solve for the remaining variable
	1. $\cancel{2}x = 40/2$
	2. $x = 20$
4. Substitute the known variable into whatever equation to solve for the unknown
	1. $4(20)+2y = 100$
	2. $80 + 2y = 100$
	3. $2y = 20$
	4. $y = 10$







### Examples
$$
\left\{
  \begin{array}{l}
	x + \frac{y}{2}=48  &\\
    \frac{	2x}{3}+y = 48
\end{array}
\right.
$$

$2\times : x + \frac{y}{2} = 48$
	$2x + y = 96$

$2x + \cancel{y} = 96$
$\frac{2x}{3} + \cancel{y} = 48$
-> $2x - \frac{2x}{3} = 48$
	-> $\frac{2x}{1} \rightarrow 3\times : \frac{6x}{3}$
-> $\frac{6x}{3} - \frac{2x}{3} = 48$
-> $\frac{4x}{3} = 48$
-> $3\times: 4x = 144$
-> $\div 4: = \frac{144}{4} = x = 36$

-> $2(36) + y = 96$
-> $y = 24$

-> $(36, 24)$
