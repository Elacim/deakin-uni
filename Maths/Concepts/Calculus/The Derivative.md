**Links**
- [[Calculus]] 
- [[Differentiation]] 
- [[Rate of change]] 
- [[Tangent]] 

https://mathsathome.com/differentiation-by-first-principles/

? :: The approximation of the gradient of the line ([[Tangent|tangent]]) that 'just touches' a given point

What does it mean for $h$ to approach $0$ (zero)? :: The second point, $x+h$ is being brought closer and closer to the first point, $x$, making the gradient closer and closer to the tangent of $x$. This is written as $\lim_{h\to0}$

$\lim_{h\to0} = \frac{ f(x + h) - f(x) }{ h  }$

Notation :: $\frac{dy}{dx}$, $f'(x)$ or $y'$

First principles/gradient-finding formula
?
$f'(x) = \lim_{h\to0} \frac{ f(x + h) - f(x) }{ h  }$


#### Applying the First Principles formula
1. Find $f(x+h)$ by substituting $x$ with $x+h$ in the $f(x)$ equation.
2. Substitute $f(x+h)$ and $f(x)$ into the first principles equation.
3. Simplify the numerator.
4. Divide all terms by h.
5. Substituting h=0 to evaluate the limit.

##### Linear equation: $f(x) = 2x+5$
1. Find $f(x+h)$ by substituting $x$ with $x+h$ in the $f(x)$ equation.
$f(x+h) = 2(x+h)+5$
-> $f(x+h) = 2x + 2h + 5$

2. Substitute $f(x+h)$ and $f(x)$ into the first principles equation.
$f'(x) = \lim_{h\to0} \frac{ f(x + h) - f(x) }{ h  }$
-> $\frac{ (2x+2h+5) - (2x+5) }{ h }$

3. Simplify the numerator.
-> $\frac{ 2x+2h+5 -2x - 5 }{ h }$
-> $\frac{ \cancel{2x}+2h\cancel{+5} \cancel{-2x} \cancel{-5} }{ h }$

4. Divide all terms by h.
-> $\frac{2h}{h}$
-> $2$
$f'(x) = \lim_{h\to0} 2$

5. Substituting h=0 to evaluate the limit.
$f'(x) = \lim_{h\to0} 2$
There are no $h$ terms to be substituted as $0$ in this limit.

$f'(x) = \lim_{h\to0} 2$
This means that at every point of $f(x)=2x+5$, the gradient is always $=2$


##### Quadratic: $f(x) = x^{2} - x$
1. Find $f(x+h)$ by substituting $x$ with $x+h$ in the $f(x)$ equation.
$f(x+h) = (x+h)^{2} - (x+h)$
-> $f(x+h) = (x^{2} + h^{2} + 2xh) - (x+h)$ $f(x+h) = x^{2} + h^{2} + 2xh - x - h$

2. Substitute $f(x+h)$ and $f(x)$ into the first principles equation.
$f'(x) = \lim_{h\to0} \frac{ f(x + h) - f(x) }{ h  }$
$\frac{ (x^{2} + h^{2} + 2xh - x - h) - (x^{2} - x) }{ h }$

 3. Simplify the numerator.
$\frac{ x^{2} + h^{2} + 2xh - x - h - x^{2} + x }{ h }$
-> $\frac{ \cancel{x^{2}} + h^{2} + 2xh \cancel{- x} - h \cancel{- x^{2}} \cancel{+ x} }{ h }$
$\frac{h^{2}+2xh-h}{h}$


4. Divide all terms by h.
$\frac{h^{2}+2xh+h}{h}$
-> $\frac{h^{2}}{h} + \frac{2xh}{h} - \frac{h}{h}$
$h + 2x - 1$

5. Substituting h=0 to evaluate the limit.
$f'(x) = \lim_{h\to0} h + 2x - 1$
-> $0 + 2x - 1$
$2x - 1$



##### Cubic: $f(x) = 2x^{3}$
1. Find $f(x+h)$ by substituting $x$ with $x+h$ in the $f(x)$ equation.
$f(x) = 2x^{3}$
$f(x+h) = 2(x+h)^{3}$
-> $2(x+h)(x+h)(x+h)$
-> $(x+h)(x+h)$
	-> $x^{2} + h^{2} + 2xh$
-> $(x^{2} + h^{2} + 2xh) ( x+h)$
	-> $x^{3} + xh^{2} + 2x^{2}h + x^{2}h + h^{3} + 2xh^{2}$ 
	-> $x^{3} + h^{3} + 3xh^{2} + 3x^{2}h$
-> $2(x^{3} + h^{3} + 3xh^{2} + 3x^{2}h)$
$2x^{3} + 2h^{3} + 6xh^{2} + 6x^{2}h$


2. Substitute $f(x+h)$ and $f(x)$ into the first principles equation.
$\frac{ f(x + h) - f(x) }{ h  }$
-> $\frac{ (2x^{3} + 2h^{3} + 6xh^{2} + 6x^{2}h) - (2x^{3}) }{ h  }$

3. Simplify the numerator.
-> $\frac{ \cancel{2x^{3}} + 2h^{3} + 6xh^{2} + 6x^{2}h \cancel{- 2x^{3}} }{ h  }$
-> $\frac{ 2h^{3} + 6xh^{2} + 6x^{2}h }{ h  }$

4. Divide all terms by h.
-> $\frac{ 2h^{3} + 6xh^{2} + 6x^{2}h }{ h  }$
-> $\frac{2h^{3}}{h} + \frac{6xh^{2}}{h} + \frac{6x^{2}h}{h}$
$2h^{2} + 6xh + 6x^{2}$

5. Substituting h=0 to evaluate the limit.
$2h^{2} + 6xh + 6x^{2}$
-> $2(0)^{2} + 6x(0) + 6x^{2}$
-> $0 + 0 + 6x^{2}$
$6x^{2}$


##### Negative powers (fractional functions): $f(x) = x^{-1}$
$f(x) = x^{-1}$
can be written as
$f(x) = \frac{1}{x}$

1. Find $f(x+h)$ by substituting $x$ with $x+h$ in the $f(x)$ equation.
$f(x+h) = \frac{1}{x+h}$

2. Substitute $f(x+h)$ and $f(x)$ into the first principles equation.
$\frac{ (\frac{1}{x+h}) - (\frac{1}{x}) }{ h  }$

3. Simplify the numerator.
%% [[Fractions]] %%
$\frac{ (\frac{1}{x+h}) - (\frac{1}{x}) }{ h  }$
$\frac{1}{x+h} - \frac{1}{x}$
Cross multiply to get
-> $\frac{x}{x(x+h)} - \frac{1 (x+h)}{x(x+h)}$ 
-> $\frac{x -1(x+h)}{x(x+h)}$ 
$\frac{ \frac{x -1(x+h)}{x(x+h)} }{ h }$ 

We want to get rid of the inner fraction, so we multiply by it's equivalent $\frac{1}{1}$
$\frac{ \frac{x -1(x+h)}{x(x+h)} }{ h } \times \frac{x(x+h)}{x(x+h)}$ 
-> $\frac{ \frac{x -1(x+h)}{x(x+h)} \times x(x+h) }{ h \times x(x+h)}$ 
-> $\frac{ \frac{x -1(x+h)}{\cancel{x(x+h)}} \cancel{x(x+h)} }{ hx(x+h)}$ 
-> $\frac{x-1(x+h)}{hx(x+h)}$
-> $\frac{x-x-h}{hx(x+h)}$
$\frac{-h}{hx(x+h)}$

4. Divide all terms by h.
$\frac{-h}{hx(x+h)}$
= $\frac{-1}{x(x+h)}$


5. Substituting h=0 to evaluate the limit.
$f'(x) = \lim_{h\to0} \frac{-1}{x(x+h)}$
$\frac{-1}{x(x+0)}$
-> $\frac{-1}{x^{2} + 0x}$

$f'(x) = \lim_{h\to0} \frac{-1}{x^{2}}$


##### Square root: $f(x) = \sqrt{x}$
[[Roots]] 
$f(x) = \sqrt{x}$

1. Find $f(x+h)$ by substituting $x$ with $x+h$ in the $f(x)$ equation.
$f(x+h) = \sqrt{x+h}$

2. Substitute $f(x+h)$ and $f(x)$ into the first principles equation.
$\frac{ f(x + h) - f(x) }{ h  }$
-> $\frac{ \sqrt{x+h} - \sqrt{x} }{h}$


3. Simplify the numerator.
$\frac{ \sqrt{x+h} - \sqrt{x} }{h}$
...by multiplying by the numerator's conjugate, $\sqrt{x+h} + \sqrt{x}$
$\frac{ \sqrt{x+h} - \sqrt{x} }{h} \times \frac{\sqrt{x+h} + \sqrt{x}}{\sqrt{x+h} + \sqrt{x}}$
-> $\frac{ (\sqrt{x+h} - \sqrt{x}) \times (\sqrt{x+h} + \sqrt{x}) }{h \times (\sqrt{x+h} + \sqrt{x})}$
-> $\frac{ (\sqrt{x+h} - \sqrt{x}) \times (\sqrt{x+h} + \sqrt{x}) }{h \times (\sqrt{x+h} + \sqrt{x})}$
	-> $(\sqrt{x+h} - \sqrt{x}) \times (\sqrt{x+h} + \sqrt{x})$
	-> $\sqrt{x+h}^{2} + \sqrt{x+h}\sqrt{x} - \sqrt{x+h}\sqrt{x} - \sqrt{x}\sqrt{x}$
	-> $x+h - x$
	-> $h$
$\frac{h}{ h \times (\sqrt{x+h} + \sqrt{x}) }$

4. Divide all terms by h.
$\frac{ \cancel{h} }{ \cancel{h} \times (\sqrt{x+h} + \sqrt{x}) }$
-> $\frac{ 1 }{ 1 \times (\sqrt{x+h} + \sqrt{x}) }$
$\frac{ 1 }{ (\sqrt{x+h} + \sqrt{x}) }$

5. Substituting h=0 to evaluate the limit.
$f'(x) = \lim_{h\to0} \frac{ 1 }{ \sqrt{x+h} + \sqrt{x} }$
-> $\frac{ 1 }{ \sqrt{x+0} + \sqrt{x} }$
$f'(x) = \lim_{h\to0} = \frac{1}{2\sqrt{x}}$

#### Interpreting the First Principles result
$f'(x) = \lim_{h\to0} 2$
The gradient is always equal to $2$ in the function $f(x)=2x+5$


#### Finding the First Principles formula
$x_{1} = x$
$x_{2} = x+h$
$y_{1} = f(x)$
$y_{2} = f(x+h)$

Since the gradient formula is $\ce{gradient} = \frac{y_{2}-y_{1}}{x_{2}-x_{1}}$, the gradient can be written as:
$\frac{ f(x + h) - f(x) }{ (x + h) - x  }$
Simplifying to $\frac{ f(x + h) - f(x) }{ h  }$

We want to find the gradient line when the distance between $x_{1}$ and $x_{2}$ approaches $0$. This is written as $\lim_{h\to0}$. See [[Limit h to 0]] for more info. 
We want this as function notation, so we write it like
$f'(x) = \lim_{h\to0} \frac{ f(x + h) - f(x) }{ h  }$
