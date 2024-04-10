**Links**
- [[Matrices]] 
- [[Simultaneous equations]] 
- [[3.2D#Task 2 Simultaneous equations]] 


Sakae bought 4 pens, 2 notepads, and paid \$13
Pritika bough 8 pens, 1 notepads, and paid \$8

*What was the cost/pen and cost/notebook?*

$$
\left \{
    \begin{array}{l}
	4p + 2n = 13  &\\
	8p + 1n = 8  &\\
 \end{array}
\right.
$$
$$
\begin{bmatrix} 4 & 2 \\ 8 & 1 \end{bmatrix}
\begin{bmatrix} p \\ n \end{bmatrix}
= \begin{bmatrix} 13 \\ 8 \end{bmatrix}
$$

Determinant: $ad-bc$
$4\times1 - 2\times8 = -12$
There therefore is a valid inverse matrix. We will times the flipped matrix using $\frac{1}{-12}$.
$$
\begin{bmatrix}  4 & 2  \\  8 & 1  \end{bmatrix} 
\rightarrow
\begin{bmatrix}  1 & -2  \\  -8 & 4  \end{bmatrix}
$$
$$
-\frac{1}{12} \times \begin{bmatrix}  1 & -2  \\  -8 & 4  \end{bmatrix}
=
\begin{bmatrix}  
   -\frac{1}{12} & \frac{2}{12}  \\
   \frac{8}{12} & - \frac{4}{12}
\end{bmatrix}
=
\begin{bmatrix}
    - \frac{1}{12} & \frac{1}{6} \\ 
    \frac{2}{3} & - \frac{1}{3}
\end{bmatrix}
$$

Now that we have the inverse matrix, we can multiply both sides of the equation by it, removing the non-inverted matrix and finding the solution for the $\begin{bmatrix}  p  \\  n \end{bmatrix}$ matrix.

Full equation:
$$
\begin{bmatrix}
    - \frac{1}{12} & \frac{1}{6} \\ 
    \frac{2}{3} & - \frac{1}{3}
\end{bmatrix}

\begin{bmatrix} 4 & 2 \\ 8 & 1 \end{bmatrix}
\begin{bmatrix} p \\ n \end{bmatrix}
= 
\begin{bmatrix}
    - \frac{1}{12} & \frac{1}{6} \\ 
    \frac{2}{3} & - \frac{1}{3}
\end{bmatrix}

\begin{bmatrix} 13 \\ 8 \end{bmatrix}
$$

Solving $A \times A^{-1}$ 
$$
\begin{bmatrix}  
    - \frac{1}{12}\times4 + \frac{1}{6}\times8 &  - \frac{1}{12} \times 2 + \frac{1}{6}\times 1\\  
    \frac{2}{3}\times4 + -\frac{1}{3}\times8 &
    \frac{2}{3}\times2 + -\frac{1}{3}\times1
\end{bmatrix}
\rightarrow
\begin{bmatrix}  1 & 0  \\  0 & 1  \end{bmatrix}
$$
$$
\begin{bmatrix}  1 & 0  \\  0 & 1  \end{bmatrix}
\begin{bmatrix}  p  \\  n  \end{bmatrix}
=
\begin{bmatrix}
    1\times p + 0 \times n \\
    0 \times p + 1 \times n 
\end{bmatrix}
=
\begin{bmatrix}  p  \\  n  \end{bmatrix}
$$

Solving $A^{-1} \times \begin{bmatrix}  13  \\  8  \end{bmatrix}$
$$
\begin{bmatrix}
    - \frac{1}{12} & \frac{1}{6} \\ 
    \frac{2}{3} & - \frac{1}{3}
\end{bmatrix}
\begin{bmatrix}  13  \\  8  \end{bmatrix}
=
\begin{bmatrix}
    -\frac{1}{12}\times13+\frac{1}{6}\times8 \\ 
    \frac{2}{3}\times13 + - \frac{1}{3}\times8
\end{bmatrix}
=
\begin{bmatrix}  - \frac{13}{12} + \frac{8}{6}  \\  \frac{26}{3} + - \frac{8}{3}  \end{bmatrix}
$$
$$
\begin{bmatrix}  - \frac{13}{12} + \frac{8}{6}  \\  \frac{26}{3} + - \frac{8}{3}  \end{bmatrix}
=
\begin{bmatrix}  - \frac{13}{12} + \frac{16}{12}=\frac{3}{12}  \\  \frac{18}{3}  \end{bmatrix}

=
\begin{bmatrix}  \frac{1}{4} \\ 6  \end{bmatrix}
$$
