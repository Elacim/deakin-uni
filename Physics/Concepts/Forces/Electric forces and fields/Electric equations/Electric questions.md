**Links**
- [[Electric equations]] 

#### **Table of contents**
```dataviewjs
//Configurations
const page = dv.page("")  // Selects file the script is in 

const highestLevel = "## "  // (the space is necessary)
const highestLevelDisplay = "###"

const headListLevel = "#####"
const headListDisplay = "- "

const content = await dv.io.load(page.file.path);
const lines = content.split('\n');
var output = [];

// Find each header and make each into a link
for (const line of lines) {
	// Test for highestLevel by detecting the space in "## "
	if (line.substring( 0, highestLevel.length) == highestLevel ) {
		output.push( highestLevelDisplay + " [[#" + line + "]]")
	} 
	
	// Make the header a link and a bullet point
	else if ( line.startsWith( headListLevel ) ) {
		var x = "";
		
		// Ignore existing links
		if (line.startsWith(headListLevel + " [[")) { 
			x = headListDisplay + line.replace( headListLevel, "" );
		} 
		
		// Add a link to the heading
		else {  
			x = headListDisplay + "[[#" + line.replace( headListLevel, "" ) + "]]";
		}
		
		output.push( x + "\n" );
	}
}
// Finally, output all the found header lines into a paragraph
dv.paragraph(output.join('\n'));
```

## Coulomb's Law questions
##### [[Quiz 4#Q8) Determine the magnitude of the electrostatic force( in N) on positive charge q2 ($3 mu C$) if it is 6 m away from positive charge q1 ($6 mu C$).|Determine the magnitude of a force from a distance (given two charges + distance)]]
- Determine magnitude of force ($F$) from a distance
	- given two charges ($q$ and $Q$) in $\mu C$ and distance ($r$)

## Electric field questions
[[Quiz 4]]
##### [[Quiz 4#Q2) What is the magnitude of the electric field strength at 4 m from a 2 C charge (K=coulomb’s constant)?]]
- given charge + distance

##### [[Quiz 4#Q9) The electric field strength of a cell membrane is about $10 {9}$ N/C.|Electrical force on a proton and the acceleration of the proton]]
- given electric field strength in N/C (V/m) and proton charge and mass

##### Find the velocity of a charged particle (given E, distance, q, and mass)
![[Electric potential - Problem 1.png]]
If $E = 5$V/m and A and B (both protons) are 5cm apart, what is the velocity?
Proton charge is $1.6 \times 10^{-19}$C and the mass is $1.67 \times 10^{-27}$
We need to find the velocity, meaning we need the energy.

$U_{elec} = V\times q$ and $V = E \times d$
-> $U_{elec} = E \times d \times q$
-> $5\ce{V/m} \times 0.05\ce{cm} \times 1.6 \times 10^{-19}\ce{C}$
$U_{elec} = 4 \times 10^{-20}$ joules

[[Kinetic energy]] 
$U_{elec} = \frac{1}{2}mv^{2}$
$v = \sqrt{ \frac{2U_{elec}}{m} }$
-> $v = \sqrt{ \frac{ 2\times 4 \times 10^{-20} }{1.67 \times 10^{-27}} }$
$v = 6921.2854$ $\ce{m/s^{2}}$

$\frac{1}{2} 1.67\times10^{-27} \times v^{2}$

##### Distance of object moving (given electric field E, q, and W)
A $20,000$ N/C^-1 uniform electric field does $+5000$J of work on a $+0.20$C charged object.
1. Does the charged object move with or against the field?
With the field, found as work is positive

2. How far did it move?
$W_{elec} = F\times d$ which $W_{elec} = (q \times E) \times d$
-> $d = \frac{W_{elec}}{qE}$
-> $\frac{5000}{ 0.20 \times 20,000 }$
$= \frac{5000J}{4000N}$
$= 1.25$m 

3. Change in electric potential through which the object was moved?
$U_{elec} = -q \times \Delta V$ so $\Delta V = - \frac{U_{elec}}{q}$
$= \frac{-5000J}{0.20C} = -25,000$V



## Electric potential questions
##### Voltage (V), energy/U-elec (E), and charge (q)
If a $3$C charge passes through a potential energy difference of $12$J, what is the voltage?
$V = \frac{U_{elec}}{q}$
-> $V = \frac{12J}{3C} = 4$ volts

If a $32$C charge passes through a $600$V electric potential difference, what is the electrical energy given to the charge?
-> $U_{elec} = QV$, $32\times600 = 19,200$ Joules

##### Potential difference between A and B
What is potential difference between points A and B?
![[Electric potential - V=ed question 1.png]]
$V = E \times d$
$V = 5 \times 0.05\ce{m}$
$= 0.25$ volts


### Movement across a potential
##### Which positions result in changes of potential?
![[Electric potential - ABC comparison.png]]
A to B? Yes
A to C? Yes. It also have the same energy as A to B as the lines moved is the same.
B to C? No. It is moving perpendicular.

##### Perpendicular movement
How much work is being done?
![[Electric potential - perpendicular charge movement.png]]
There is no work as it is moving along the equipotential line

##### Keep a charge stationary
![[Electric potential - Force to keep still.png]]
As $E=\frac{F}{q}$ therefore $F = E \times q$
$F = 5 \times 1.6 \times 10^{-19}$
$= 8 \times 10^{-19}$ Newtons



