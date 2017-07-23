# skijump
Ski Jump problem in MATLAB for student lecture.

A convenient way to draw curves of a desired shape is to select some points on the curve and find polynomial whose graph goes through these points. 2 points, for example, determine a unique line, which is the graph of a polynomial of degree 1 (if the line is not vertical). 3 non-collinear points determine a unique parabola, which is the graph of a polynomial of degree 2 (if the points have distinct x coordinates). 4 points determine a unique polynomial of degree less than or equal to 3, and so on.


A)	Suppose we want a curve through the unique quadratic polynomial
p(x) = ax^2 + bx + c
whose graph goes through these points. Substituting the values of x and y, we get a linear system: 
0a + 0b + 1c = 7
1a + 1b + 1c = 6
4a + 2b + 1c = 9
Solve for the unknown coefficients a, b, c by applying MATLAB's backslash operator \ to the system Ap = y, where A is the coefficient matrix of the above system, p is the vector of unknowns [a, b, c]^T, and B is the column vector of the right side. 

B)	Graph the polynomial
p(x) = ax2 + bx + c
whose coefficients a, b, and c you found in (a), and check visually, that the graph is a parabola which goes through the three given points.

C)	Find the coefficients of the cubic polynomial
p(x) = ax3 + bx2 + cx + d
whose graph goes through the points (-2, 6), (1, 4), (2,3), (3, -2).

D)	As in (b), check your answer to (c) visually.

E)	Find the coefficients of the fourth-degree polynomial
p(x) = ax4 + bx3 + cx2 + dx + e
that goes through the points (0, 1), (1, 1), (-1,3), and has a slope of 20 at x = -1 and a slope of 9 at x = 1.

F)	As in (b), check your answer to (e) visually.

G)	Design a ski jump that has the following specifications:
The ski jump starts at a height of 100 feet and finishes at a height of 10 feet. From start to finish, the ski jump covers a horizontal distance of 120 feet. A skier using the jump will start off horizontally and will fly off the end at a 30° angle from the horizontal. 
What are the start and finish slopes for the ski jump?
Find a polynomial whose graph is a side view of the ski jump.
