**Links**
- [[Unit circle]] 
- [[Unit circle - Quadrants]] 

Use this [interactive unit circle](https://www.mathsisfun.com/algebra/trig-interactive-unit-circle.html)to visualise solving these.
## Solving $2\sin(x)-1=0$
$\sin(x) = \frac{1}{2} \rightarrow x = \frac{\pi}{6}$
We want to find all the values ($x$-intercepts) of $\sin$ that when the $\arcsin$ function is used,  equals $\frac{1}{2}$

### Finding the x-intercepts
There are four opportunities per full rotation in all 4 quadrants.
We can find them all purely geometrically like so
![[Solving for angles - first rotation.jpg|200]]![[Solving for angles - second rotation.jpg|200]]

#### Quadrant math
##### Quadrant 1
The first $x$-intercept is $\frac{\pi}{6}$.

On the second run of the circle, we add $2\pi$ ($360\degree$)
The third is $2\pi + \frac{\pi}{6} = \frac{13\pi}{6}$

##### Quadrant 2
 Minus the known value ($\frac{\pi}{6}$) from $\pi$ ($180\degree$)
$\pi - \frac{\pi}{6} = \frac{6\pi}{6} - \frac{\pi}{6} = \frac{5\pi}{6}$

On the second run of the circle, we add $2\pi$ ($360\degree$) and another $\pi$
$3\pi - \frac{\pi}{6} = \frac{17\pi}{6}$

##### Quadrant 3
Add the known value to $\pi$
$\pi + \frac{\pi}{6} = \frac{6\pi}{6} + \frac{\pi}{6} = \frac{7\pi}{6}$


$3\pi + \frac{\pi}{6} = \frac{19\pi}{6}$

##### Quadrant 4
Minus the known value ($\frac{\pi}{6}$) from $2\pi$ ($360\degree$)
$2\pi - \frac{\pi}{6} = \frac{12\pi}{6} - \frac{\pi}{6} = \frac{11\pi}{6}$

Now we're just before the third rotation
$4\pi - \frac{\pi}{6} = \frac{23\pi}{6}$

##### Results
So, from all these quadrants, we have values $\frac{\pi}{6}, \frac{5\pi}{6}, \frac{7\pi}{6}, \frac{11\pi}{6}, \frac{13\pi}{6}, \frac{17\pi}{6}, \frac{19\pi}{6}, \frac{23\pi}{6}$
When $\sin$ is applied to each of these, the values are $\frac{1}{2}, \frac{1}{2}, - \frac{1}{2}, - \frac{1}{2}, \frac{1}{2}, \frac{1}{2}, - \frac{1}{2}, - \frac{1}{2}$
The last two quadrants $\sin$ value doesn't match the positive $\frac{1}{2}$ requirement, so we can ignore them as $x$-intercepts, leaving $\frac{\pi}{6}, \frac{5\pi}{6}, \frac{13\pi}{6}, \frac{17\pi}{6}$ as the intercepts.


The graph is
![[Solving for sin and cos using the unit circle - 2sin(x)-1=0.png]]





## Solving $3\cos(x)+2 = 0$
$\cos(x) = -\frac{2}{3} \rightarrow x = 2.3005239830$
$2.3.. \times \frac{180}{\pi} = 131.810314894\degree$

### Finding the x-intercepts
=( pi - arccos(-2/3) ) * (180/pi)
= 48.1896851042 (0.8410686706 radians)
$\cos(0.84) = 0.666 = \frac{2}{3}$
Doesn't match $- \frac{2}{3}$ so it's not an x-intercept

=( pi + arccos(-2/3) ) * (180/pi)
= 311.8103148958 (5.4421166366 radians)
$\cos(5.44) = 0.666 = \frac{2}{3}$
Doesn't match $- \frac{2}{3}$ so it's not an x-intercept

=( 2pi - arccos(-2/3) ) * (180/pi)
228.1896851042 (3.9826613242 radians)
$\cos(3.98) = -0.666 = -\frac{2}{3}$


=( 2pi + arccos(-2/3) ) * (180/pi)
491.8103148958 (8.5837092902 radians)
$\cos(8.58) = -0.666 = -\frac{2}{3}$


**x-intercepts**
$2.301, 3.982, 8.584$