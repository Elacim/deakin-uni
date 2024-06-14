#cheat-sheet
**Links**
- [[Kinematics]] 
	- [[Acceleration]] 
	- [[Distance and displacement]] 
	- [[Velocity and Speed]] 
	- [[Gravity]] 
- [[Kinematic questions]] 
### Terms
$v_{i}$/$u$ :: Start velocity
$v_{f}$/$v$ :: Final velocity
$\Delta x$/$s$/$x$ :: Displacement
$t$ :: Time
$a$ :: Acceleration

### Basic formulae

| Formula                                                                                       | Solves                           | Variations                   |
| --------------------------------------------------------------------------------------------- | -------------------------------- | ---------------------------- |
| $a = \frac{\Delta v}{\Delta t} = \frac{v_{f} - v_{i}}{t_{f} - t_{i}}$                         | [[Acceleration]]                 | [[#Acceleration variations]] |
| $v = \frac{\Delta x}{\Delta t} = \frac{x_{f} - x_{i}}{t_{f} - t_{i}}$<br>-> $v = \frac{d}{t}$ | [[Velocity and Speed\|Velocity]] | [[#Velocity variations]]     |

##### Equations of motion

| Formula                                 | Solves                                 | Name |
| --------------------------------------- | -------------------------------------- | ---- |
| $v_{f} = v_{i} + at$                    | Final velocity                         | 1st  |
| $v^{2}_{f} = v^{2}_{i} + 2ax$<br>       | Final velocity with<br>no time         | 4th  |
| $\Delta x = v_{i}t + \frac{1}{2}at^{2}$ | Displacement given<br>initial velocity | 2nd  |
| $\Delta x = v_{f}t - \frac{1}{2}at^{2}$ | Displacement given<br>final velocity   | 5th  |
| $\Delta x = \frac{1}{2}(v_{i}+v_{f}) t$ | Displacement with<br>no acceleration   | 3rd  |

## Variations
##### Acceleration variations
| Formula                                   | Knowns            | Unknowns |
| ----------------------------------------- | ----------------- | -------- |
| $a = \frac{v_{f} - v_{i}}{t}$             | $t, v_{f}, v_{i}$ | $a$      |
| $a=\frac{v_{f}^{2}-v_{i}^{2}}{2\Delta x}$ | $v_{f},v_{i},x$   | $a,t$    |
| $a=\frac{2(\Delta x - v_{i}t)}{t^{2}}$    | $t,x,v_{i}$       | $a$      |
| $a = \frac{-2(\Delta x - v_{f}t)}{t^{2}}$ | $t,x,v_{f}$       | $a$      |


##### Velocity variations
| Formula                                                                                             |
| --------------------------------------------------------------------------------------------------- |
| $v_{f} = v_{i} + at$                                                                                |
| $v_{i} = v_{f} - at$                                                                                |
| $v^{2}_{f} = v^{2}_{i} + 2ax$<br>-> $v_{f} = v_{i} + \sqrt{2ax}$<br>-> $v_{i} = v_{f} - \sqrt{2ax}$ |
|                                                                                                     |

##### Displacement
| Formula                                                             | Description                            | Common name        |
| ------------------------------------------------------------------- | -------------------------------------- | ------------------ |
| $\Delta x = v_{i}t + \frac{1}{2}at^{2}$                             |                                        |                    |
| $x = \frac{1}{2}(v_{i} +v_{f})t$                                    | Half of average velocity $\times$ time | Mean-speed theorem |
| $\text{disp} = \sqrt{(\text{side}_{1})^{2}+ (\text{side}_{2})^{2}}$ | [[Distance and displacement]]          |                    |
| $x = \frac{v^{2}_{f} - v^{2}_{i}}{2a}$<br>                          | If $v_{i} \neq 0$                      |                    |
| $x = \frac{v^{2}_{f}}{2a}$                                          | If $v_{i}=0$                           |                    |

##### Time
| Formula                                                      | Description                                   |
| ------------------------------------------------------------ | --------------------------------------------- |
| $t = \frac{v_{f} - v_{i}}{a}$                                |                                               |
| $t=\sqrt{\frac{2\Delta x}{a}}$                               | 2nd kinematic (assuming $v_i=0 \ce{m/s^{2}}$) |
| $t = \frac{ - 2v_{i} \pm 2\sqrt{ 2ax + v_{i}^{2} }}{2a}$<br> | 2nd kinematic ($v_{i} > 0$$\ce{m/s^{2}}$)     |

# Questions

A rocket is launched straight up with a constant acceleration of 18m/s^2. In 150s, how fast is the rocket moving and how far has it travelled?
$v_{f} = v_{i} + at$
-> $0\text{m/s} + 18\text{m/s}^{2} \times 150s$
$= 2700$m/s^2
It has travelled $\Delta x = v_{i}t + \frac{1}{2}at^{2}$
-> $0 \times 150 + \frac{1}{2}18 \times 150^{2}$
$= 202500\text{m} = 202.5\text{km}$

Take off: time/velocity

A 3kg fish can accelerate from rest to 7m/s in 2s
Acceleration = 7/2 = 3.5m/s^2
Force = 3kg $\times$ 3.5 = 10.5N 

##### General problem solving strategy
1. Illustrate the problem (write down known variables)
2. Enumerate the problem
3. Solve
4. Validate

