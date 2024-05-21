#light/laws/refraction
**Links**
- [[Light]] 
- [[Lenses]] 
- [[Light objects and sources]] 
- [[Law of Reflection]] 

**Table of contents**
- [[#Snell's law of refraction]]
- [[#Critical angle]]
- [[#Common indices of refraction (IoRs)]]

Refraction occurs when light moves from one medium to another that have different densities. These densities alter the speed of light.

$n$ :: Index of Refraction ($\ce{IoR}$)

$n = \frac{\ce{speed of light in a vacuum}}{\ce{speed of light in a medium}} = \frac{c}{v}$

![[Law of Refraction.png]]
#### Snell's law of refraction
$n_{1} \times \sin(\theta_{1}) = n_{2} \times \sin(90\degree - \theta_{2})$

Rays going from low to high $\ce{IoR}$ :: Smaller angle with the normal (bends to the normal)
Rays going from high to low $\ce{IoR}$ :: Larger angle with the normal (bends away from the normal)

**Example**
In this image, what is the index of refraction of the plastic?
![[Law of Refraction - Snell's law example.png|200]]
$n_{1} = 1.00$ (air at STP)
$\theta_{1} = 45\degree$
$n_{2} = ?$
$\theta_{2} = 90\degree - 55\degree = 35\degree$
-> $1.0 \times \sin(45\degree) = n_{2} \times \sin(35\degree)$
-> $\sin(45\degree) = n_{2} \times \sin(35\degree)$
-> $\frac{\sin(45\degree)}{\sin(35\degree)} = n_{2}$
-> $n_{2} = 1.233$


#### Critical angle
[Source - 'Total Internal Reflection'](http://www.a-levelphysicstutor.com/optics-tot-int-refl.php)
When refracting, there are two rays: the refracted ray and the reflected ray

Total internal reflection occurs when the angle of incidence exceeds the critical angle.
Why? Because the ray would be refracted $90\degree$ from $n_{1}$ to $n_{2}$, meaning there is no refracted ray as it cannot escape into $n_{2}$.   

**Finding the critical angle**
We can use Snell's law and adjust it to our needs.
A critical angle ($c\degree$) is formed by a $90\degree$ angle between $n_{1}$ and $n_{2}$, so we substitute that in to $n_{1}$'s theta.

$n_{1}\sin(90\degree) = n_{2}\sin(c\degree)$
-> $n_{1} \times 1 = n_{2}\sin(c\degree)$
-> $\frac{n_{1}}{n_{2}} = \sin(c\degree)$
-> $\sin(c\degree) = \frac{n_{1}}{n_{2}}$

###### Ray being refracted at $90\degree$
![[Law of Refraction - Critical Angle - Ray being refracted at 90 degrees.jpg]]

### Common indices of refraction (IoRs)
**Sources:**
- https://en.wikipedia.org/wiki/List_of_refractive_indices
- [[Class 10.pdf#page=30|Week 10 slides (page 30)]]

| Substance       | Index of Refraction |
| --------------- | ------------------- |
| Vacuum          | $1.0$               |
| Air at STP      | $1.000273$          |
| $CO_{2}$ at STP | $1.00045$           |
| Water at STP    | $1.333$             |
| Glass           | $1.434$             |
| Diamond         | $2.419$<br>         |
| Salt            | $1.544$             |
| Vegetable oil   | $1.47$              |
| Silicon         | $3.45$              |
