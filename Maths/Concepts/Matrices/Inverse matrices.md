**Links**
- [[Matrices]] 
- [[Determinant]] 

$$
A: \begin{bmatrix}
    a & b \\ 
    c & d
\end{bmatrix}

\text{ and }

A^{-1}: \begin{bmatrix}
    d & -b \\ 
    -c & a
\end{bmatrix}
$$
Determinant $ad-bc$ must be non-zero

Find the inverse using:
$\ce{Matrix} \times \frac{1}{ad-bc}$

https://www.mathsisfun.com/algebra/matrix-determinant.html

Useful in large [[Simultaneous equations]] with more than 2 variables

```mathpad
C:=matrix([3,-7,5,-1],[2,0,-8,0],[-5,9,-1,15],[0,-3,0,1])
%$11:=matrix([3,-7,5,-1],[2,0,-8,0],[-5,9,-1,15],[0,-3,0,1])
%$12:=1416
C0:=matrix([18/59,65/354,10/177,-32/59],[7/236,11/708,17/708,-39/118],[9/118,-14/177,5/354,-8/59],[21/236,11/236,17/236,1/118])
%$13:=matrix([18/59,65/354,10/177,-32/59],[7/236,11/708,17/708,-39/118],[9/118,-14/177,5/354,-8/59],[21/236,11/236,17/236,1/118])
C1:=matrix([x],[y],[z],[u])
%$14:=matrix([x],[y],[z],[u])
C2:=matrix([8],[-3],[33],[-19])
%$15:=matrix([8],[-3],[33],[-19])
C0*C2==?
```
Inverse matrix $\times$ regular matrix = identity matrix ($\begin{bmatrix}  1 & 0  \\  0 & 1  \end{bmatrix}$)
