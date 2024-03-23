**Links**
- [[3.1P#Task 2 - Matrices]] 
- [[Inverse matrices]] 
	- [[Determinant]] 


https://www.mathsisfun.com/algebra/matrix-transform.html


Matrix size :: $\ce{rows \times columns}$
Final matrix size :: $A: \ce{rows} \times B: \ce{cols}$
Multiplication rule :: $\ce{A_{cols} == B_{rows}}$

Identity matrixes can be used for [[Simultaneous equations]] 

```
$$
\begin{bmatrix}
    1 & 2 & 3 \\ 
    a & b & c
\end{bmatrix}
$$

$\begin{bmatrix} r1c1 & r1c2 \\ r2c1 & r2c2 \end{bmatrix}$
```
##### Addition and subtraction
$$
\begin{bmatrix}
    1 & 2 & 3 \\ 
    a & b & c
\end{bmatrix}
+
\begin{bmatrix}
    4 & 5 & 6 \\ 
    d & e & f
\end{bmatrix}
=
\begin{bmatrix}
    5 & 7 & 9 \\ 
    a+d & b+e & b+f
 \end{bmatrix}
 $$
Same goes for subtraction


**Multiplication**
Requirements:
- The number of columns in matrix $A$ must be equal to the number of rows in matrix $B$
	- $\ce{A_{columns} = B_{rows}}$

Notes: 
- Matrix multiplication generally doesn't go both ways
	- i.e. $A \times B = C$ and (generally) $B \times A = D$ rather than $B \times A = C$
	- It is guaranteed to go both ways if $A$ and $B$'s rows and columns are the same number (e.g. $A:2\times2$ and $B:2\times2$) 

How to do:
- Multiply each entry in $A$'s first row with each entry in $B$'s first column
	- Add each of these to get the result

$$
\begin{bmatrix}
    1 & 2 & 3 \\ 
    4 & 5 & 6
\end{bmatrix}
\times
\begin{bmatrix}
    7 & 8 \\ 
    9 & 10 \\
    11 & 12
\end{bmatrix}
=
\begin{bmatrix}
    58 & 64 \\ 
    139 & 154
\end{bmatrix}
$$
$2 \times 3$ matrix multiplied by a $3 \times 2$ matrix
Final matrix: $2 \times 2$
$$
\begin{bmatrix}
    (1 \times 7) + (2 \times 9) + (3 \times 11) = 58 &
    (1 \times 8) + (2 \times 10) + (3 \times 12) = 64 \\ 
    
    (4 \times 7) + (5 \times 9) + (6 \times 11) = 139 &
    (4 \times 8) + (5 \times 10)+ (6 \times 12) = 154
\end{bmatrix}
$$


`A:=matrix([a,b,c,d],[e, f, g, h])`
`B:=matrix([i],[j],[k],[l])`
`A2:=matrix([1,2,3,4],[5, 6, 7, 8])`
`B2:=matrix([9],[10],[11],[12])`
`A==?` `B==?` `A2==?` `B2==?`
2x4 with a 4x1
`A*B==?`
`A2*B2==?`

