**Links**
- [[Concepts/Operations/Matrices|Matrices]] 

? :: An $n \times n$ matrix, where the row and columns are the same amount. Each row, column, and diagonal adds to the same number

1. Place the number 1 in the middle cell of the bottom row
2. From the current cell, go up one cell (wrapping top -> bottom) and across one cell (wrapping right -> left)
	1. If empty, place the next number in it
	2. Otherwise, if full, place the next number below the current number

![[Magic squares - 3x3 example.png]]