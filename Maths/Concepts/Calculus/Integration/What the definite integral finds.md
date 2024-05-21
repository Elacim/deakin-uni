**Links**
- [[Definite integral]] 

For this graph, $y= 2+x$ and the parabola $y = 2x^{2} - 3x - 31$. We want to find the area between these two - meaning, only the parabola area below the linear line.
![[What the definite integral finds - 1.1 graph.png|200]]![[What the definite integral finds - Area we're finding.png|150]]

Intersect coords 1: $\left(\frac{ 4 + \sqrt{ 280 } }{ 4 }, 2 + \frac{ 4 + \sqrt{ 280 } }{ 4 }\right) \approx (5.1833001327, 7.1833001327)$
Intersect coords 2: $\left(\frac{ 4 - \sqrt{ 280 } }{ 4 }, 2 + \frac{ 4 - \sqrt{ 280 } }{ 4 }\right) \approx (-3.1833001327, -1.1833001327)$
##### Finding the area of the left-side of the parabola
![[What the definite integral finds - Graph 1.3 left parabola.png|200]]
$y = 2x^{2} - 3x - 31$
$\int_{-3.183}^{-2} ( 2x^{2} - 3x - 31 )dx$
-> $\frac{2}{3}x^{2+1} - \frac{3}{2}x^{1+1} - \frac{31}{1}x^{0+1}$
-> $\frac{2}{3}x^{3} - \frac{3}{2}x^{2} - 31x$

$[\frac{2}{3}x^{3} - \frac{3}{2}x^{2} - 31x]_{-3.183}^{-2}$
-> $\frac{2}{3}(-2)^{3} - \frac{3}{2}(-2)^{2} - 31(-2)$
	-> $= 50 \frac{2}{3} = \frac{152}{3}$
-> $\frac{2}{3}(-3.183)^{3} - \frac{3}{2}(-3.183)^{2} - 31(-3.183)$
	-> $=61.97674$

$\frac{152}{3} - 61.97674 = -11.31$ unit$^{2}$
### Finding the triangle areas
##### Finding the area of the left-most triangle
![[What the definite integral finds - Left triangle.png|200]]
To find the area of the leftmost small triangle, we use the values $-2$ and $\frac{ 4 - \sqrt{ 280 } }{ 4 }$ in an integral. $-2$ gives a higher $y$ value so it is on the upper bounds of the integral.
The integral we want to find involves the linear line, so we use given linear equation in it.
$\int_{\frac{ 4 - \sqrt{ 280 } }{ 4 }}^{-2}\left(2+x\right)dx$
-> $\frac{2}{1}x^{0+1} + \frac{1}{2}x^{1+2}$
-> $\frac{1}{2}x^{2} + 2x$

$[\frac{1}{2}x^{2} + 2x]_{-3.183}^{-2}$
-> $\frac{1}{2}(-2)^{2} + 2(-2)$
-> $\frac{4}{2} - 4$
$= -2$
-> $\frac{1}{2}(\frac{ 4 - \sqrt{ 280 } }{ 4 })^{2} + 2(\frac{ 4 - \sqrt{ 280 } }{ 4 })$
$=\frac{45}{4} - 3 \sqrt{\frac{35}{2}}$
$\approx -1.29990039...$

From these two values, we can find the approximate signed area of this little triangle as: 
-> $(-2) - (\frac{45}{4} - 3 \sqrt{\frac{35}{2}})$
-> $-2 -\frac{45}{4} + 3 \sqrt{\frac{35}{2}}$
-> $- \frac{8}{4} -\frac{45}{4} + 3 \sqrt{\frac{35}{2}}$
-> $3 \sqrt{\frac{35}{2}} - \frac{53}{4}$
$\approx -0.700099601$


**Alternate strategy**
Using $\frac{1}{2}bh$, the intersection coordinate starts from $-2$ and ends at $\frac{ 4-\sqrt{280} }{4}$, so find the base by adding $+2$. 
For the height to be accurate, we need to convert it to absolute.
$\frac{1}{2} ( \frac{ 4 - \sqrt{ 280 } }{ 4 }+2) \times (|2 + \frac{ 4 - \sqrt{ 280 } }{ 4 }|)$
$\approx -0.700099601$


##### Finding the area of the right-side triangle
![[What the definite integral finds - 1 - Right side triangle.png]]
$\int^{ \frac{ 4 + \sqrt{ 280 }}{4} }_{-2}\left(2+x\right)dx$
-> $\frac{1}{2}x^{2} + 2x$
$[\frac{1}{2}x^{2} + 2x]^{\frac{ 4 + \sqrt{ 280 }}{4}}_{-2}$
-> $\frac{1}{2}(\frac{ 4 + \sqrt{ 280 }}{4})^{2} + 2(\frac{ 4 + \sqrt{ 280 }}{4}) \approx 23.798$
-> $\frac{1}{2}(-2)^{2} + 2(-2) = -2$
$b-a \to 23.798 - -2 = 25.798$ units$^{2}$

All the integral is doing in this case is calculating $\frac{1}{2}bh$:
$\frac{1}{2} \times (|-2| + \frac{ 4 + \sqrt{ 280 }}{4}) \times (2+\frac{ 4 + \sqrt{ 280 }}{4}) \approx 25.798$ units$^{2}$


##### Adding these areas together
We had to do these as separate integrals. Why?
Because definite integrals find the area between a line's $y$ output and the $x$-axis for every $x$ coordinate provided before summing them up.
If we look at the triangles, if we pass in the intersection $x$ coordinates, they will all calculate these same values, $25.798$ and $-0.7$ units$^{2}$ as in-between the first intersection point and the second, there is no overlap of the linear line with the parabola line. While this seems nice, it will not give the values separately, it will instead sum them together into $25.798 + -0.7 \approx 25.1$, giving the complete wrong answer.
Every intersection and $x$-axis crossing needs a new interval calculated.

Area: $25.798 - - 0.7 \approx 26.498$ units$^{2}$



##### What happens if we try to integrate using the intersection coordinates?
Simply put, we get the wrong answer.
We get $\approx 25.1$ units$^{2}$ instead of $26.5$ units$^{2}$

Intersection coordinate left $x: \frac{ 4 - \sqrt{ 280 } }{ 4 }$
Intersection coordinate right $x: \frac{ 4 + \sqrt{ 280 } }{ 4 }$

$\int_{\frac{ 4 - \sqrt{ 280 } }{ 4 }}^{\frac{ 4 + \sqrt{ 280 } }{ 4 }}\left(2+x\right)dx$
-> $\frac{2}{1}x^{0+1} + \frac{1}{2}x^{1+2}$
-> $\frac{1}{2}x^{2} + 2x$
$[\frac{1}{2}x^{2} + 2x]_{\frac{ 4 - \sqrt{ 280 } }{ 4 }}^{\frac{ 4 + \sqrt{ 280 } }{ 4 }}$

**Left coordinate ($a$)**
$\frac{1}{2}(\frac{ 4 - \sqrt{ 280 } }{ 4 })^{2} + 2(\frac{ 4 - \sqrt{ 280 } }{ 4 })$
$=\frac{45}{4} - 3 \sqrt{\frac{35}{2}}$
$\approx -1.29990039...$

**Right coordinate ($b$)**
$\frac{1}{2}(\frac{ 4 + \sqrt{ 280 } }{ 4 })^{2} + 2(\frac{ 4 + \sqrt{ 280 } }{ 4 })$
$= \frac{1}{2} (4 + 2 \sqrt{70}) + \frac{1}{32} (4 + 2 \sqrt{70})^{2}$
$\approx 23.7999$

**Adding them together**
$b-a$
$\left(\frac{1}{2} \left(4 + 2 \sqrt{70}\right) + \frac{1}{32} (4 + 2 \sqrt{70})^{2}\right) - (\frac{45}{4} - 3 \sqrt{\frac{35}{2}})$
### Finding the area of the parabola
Remembering that the definite integral calculates the sum of negative area and positive area, we want to calculate the negative parts and the positive parts.





### Finding the total area
We want to add each of the areas together in order that they appear.

We need to 


$I_{1} = \frac{4-\sqrt{280}}{4}$
$I_{2} = \frac{4+\sqrt{280}}{4}$

$P: 2x^{2} - 3x -31$
	$P_{x,intercept}= \frac{3+\sqrt{257}}{4}$
$L : 2+x$
	$L_{x,intercept}: -2$



**Area of the small triangle: From $I_{1}$ to $-2$**
For $L$ $= -\frac{37-2\sqrt{70}}{4}+\sqrt{70}-4 \approx -0.7$
For $P = \frac{152}{3}+\frac{277-122\sqrt{70}}{12} \approx -11.3104$
-> $(-\frac{37-2\sqrt{70}}{4}+\sqrt{70}-4) - (\frac{152}{3}+\frac{277-122\sqrt{70}}{12})$
$= \frac{35 \sqrt{70}}{3} - 87$
$\approx -11.3104 - - 0.7 = -10.6104$
![[DI Ex1 - I1 to -2.jpg|200]]

**Negative area of the parabola: From $-2$ to $P_{x,intercept}$**
For $L = \frac{157+11\sqrt{257}}{16}+2 \approx 22.8339$
For $P = -\frac{152}{3}+\frac{-1143-257\sqrt{257}}{48} \approx -160.3129$
-> $(-\frac{152}{3}+\frac{-1143-257\sqrt{257}}{48}) - (\frac{157+11\sqrt{257}}{16}+2)$
$= - \frac{2071}{24} - \frac{145 \sqrt{257}}{24}$
$\approx -160.3129 - 22.8339 = -183.1468$
![[DI Ex1 - -2 to Px.jpg|200]]


**Positive area of the parabola: From $P_{x,intercept}$ to $I_{2}$**
For $L = \sqrt{70}+\frac{8\sqrt{70}-9-11\sqrt{257}}{16}+2 \approx 2.9659$
For $P = \frac{35+257\sqrt{257}-488\sqrt{70}}{48} \approx 1.5025$
-> $(\frac{35+257\sqrt{257}-488\sqrt{70}}{48}) - (\sqrt{70}+\frac{8\sqrt{70}-9-11\sqrt{257}}{16}+2)$
$= - \frac{17}{24} - \frac{35 \sqrt{70}}{3} + \frac{145 \sqrt{257}}{24}$
$\approx 1.5025 - 2.9659 = -1.4634$
We are subtracting the combined sliver at the right side of the parabola + line.
![[DI Ex1 - Px to I2.jpg|200]]


**Combing all the areas**
As areas can't be negative, we can take the absolute of each area then sum them
$|-10.6104| + |183.1468| + |1.4634| = 195.2206$
![[DI Ex1 - f(x) - g(x).jpg|200]]