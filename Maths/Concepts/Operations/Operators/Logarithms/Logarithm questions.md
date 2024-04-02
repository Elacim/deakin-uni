**Links**
- [[Logarithms (log)]] 
- [[Log Laws]]

# Simplify: $3log_{3}(4) - log_{3}(256) + log_{3}(12)$
-> $log_{3}(4^{3})$
	-> $log_{3}\left(\frac{64}{256}\right) \rightarrow log_{3}(0.25)$
-> $log_{3}(0.25) + log_{3}(12)$
	-> $0.25 \times 12 = 3$
$log_{3}(3)$

# Simplify: $3log_{5}2 - log_{5}(16) + 2log_{5}(10)$
-> $log_{5}(2^{3}=8) - log_{5}(16) = log_{5}\left(\frac{8}{16}\right)= log_{5}(0.5)$
-> + $log_{5}(10^{2})= log_{5}(100)$
-> $log_{5}(0.5) + log_{5}(100)$
	-> $log_{5}(100\times0.5)$
$log_{5}(50)$

# Find $x$: $e^{2x^{2}-3x} = 5$
$e^{2x^{2}-3x} = 5$
-> apply [[Log Laws - Log(m raised to n)]]
	-> $log_{e}(e^{2x^{2}-3x}) = log_{e}(5)$
		-> $log_{e}(e^{2x^{2}-3x}) \rightarrow 2x^{2}-3x \times log_{e}(e)$ 
-> Apply [[Log Laws - Log base of base]] 
	-> $log_{e}(e) = 1$
-> $(2x^{2} - 3x) \times 1 = log_{e}(5)$
-> $2x^{2} - 3x = log_{e}(5)$
-> Rearrange for the [[Quadratic formula]] 
	-> $2x^{2} - 3x - log_{e}(5)= 0$
-> $x= \frac{ -(-3) \pm \sqrt{ (-3)^{2} - 4(2)(-log_{e}(5)) } }{ 2(2) }$
-> $x= \frac{ 3 \pm \sqrt{ 9 - 8(-log_{e}(5)) } }{ 4 }$
$x= \frac{ 3 \pm \sqrt{ 9 + 8(log_{e}(5)) } }{ 4 }$


# Find $x$: $\sqrt{e^{x} - 1} = 4$
$\sqrt{e^{x} - 1} = 4$
-> $e^{x} - 1 = 4^{2}$
-> $e^{x} = 16+1$
Apply [[Log Laws - Log base of base]] 
-> $log_{e}(e^{x}) = log_{e}(17)$
-> $1 \times x = log_{e}(17)$
$x = log_{e}(17)$



# Solve for $x$:
$2y = 10 + e^{3x-4}$
Remember reverse BODMAS - subtract the 10 before ln()'ing
-> $2y - 10 = e^{3x-4}$
-> $ln(2y - 10) = ln(e^{3x-4})$
-> $ln(2y - 10) = 3x-4$
-> $ln(2y - 10) + 4 = 3x$
-> $\frac{ln(2y - 10) + 4}{3} = x$
$x=\frac{ln(2y - 10) + 4}{3}$
