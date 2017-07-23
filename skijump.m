% skijump.m
% 07/24/2017
% Anthony Krivonos
% Ski Jump

% Problem Summary
% 
% A convenient way to draw curves of a desired shape is to select
% some points on the curve and find polynomial whose graph goes
% through these points. Two points, for example, determine a unique
% line, which is the graph of a polynomial of degree 1 (if the line
% is not vertical). Three noncollinear points determine a unique
% parabola, which is the graph of a polynomial of degree 2 (if the
% points have distinct x coordinates). Four points determine a
% unique polynomial of degree less than or equal to 3, and so on.
% Suppose we want a curve through the unique quadratic polynomial
% 
% P(x) = ax^2 + bx + c
% 
% whose graph goes through these points. Substituting the values of
% x and y, we get a linear system:
% 
% 0a + 0b + 1c = 7
% 
% 1a + 1b + 1c = 6
% 
% 4a + 2b + 1c = 9

% Part A
% 
% Solve for the unknown coefficients a, b, c by applying MATLAB's
% backslash operator \ to the system Ap = y, where A is the
% coefficient matrix of the above system, p is the vector of
% unknowns [a, b, c]^T, and B is the column vector of the right 
% side.
A = [ 0 0 1 ; 1 1 1 ; 4 2 1];
y = [ 7 6 9 ]';
p = A\y


% Part B
% 
% Graph the polynomial P(x) = ax^2 + bx + c whose coefficients a, b,
% and c you found in (a), and check visually, that the graph is a
% parabola which goes through the three given points.
u = 0:0.1:2;
v = polyval(p, u);
plot(u,v);


% Part C
% 
% Find the coefficients of the cubic polynomial
% P(x) = ax^3 + bx^2 + cx + d
% whose graph goes through the points (-2, 6), (1, 4), (2,3), (3, -2).
x = [ -2 ; 1 ; 2 ; 3];
A = vander(x);
y = [ 6 4 3 -2 ]';
p = A\y


% Part D
% 
% As in (b), check your answer to (c) visually:
u = -2:.1:3;
v = polyval(p, u);
plot(u,v,'o');


% Part E
% 
% Find the coefficients of the fourth-degree polynomial
% P(x) = ax^4 + bx^3 + cx^2 + dx + e
% whose graph goes through the points (0, 1), (1, 1), (-1,3), and
% whose slope at x = -1 is 20 and at x = 1 is 9.
A = [0 0 0 0 1 ; 1 1 1 1 1 ; 1 -1 1 -1 1 ; -4 3 -2 1 0 ; 4 3 2 1 0];
y = [1 1 3 20 9]';
p = A\y

% Part F
% As in (b), check your answer to (e) visually:
u = -1:0.01:1;
v = polyval(p, u);
d = polyder(p);
q = polyval(d, u);
q(1)    % Start slope
q(201)  % Finish slope
plot(u,v,'-o');


% Part G
% Design a ski jump that has the following specifications:
% The ski jump starts at a height of 100 feet and finishes at a
% height of 10 feet.
% From start to finish, the ski jump covers a horizontal distance
% of 120 feet.
% A skier using the jump will start off horizontally and will fly
% off the end at a 30 degree angle from the horizontal.
% 
% Find a polynomial whose graph is a side view of the ski jump.
A = [43200 240 1 0; 0 0 0 1; 1728000 14400 120 1];
y = [0.75 100 10]';
p = A\y
% What are the start and finish slopes for the ski jump?
% 
% See Part H


% Part H
% As in (b), check your answer to (e) visually:
u = 0:0.1:120
v = polyval(p, u) 
d = polyder(p) 
q = polyval(d, u)
q(1)     % Start slope
q(1201)  % Finish slope
plot(u,v);
hold on;
der = find(round(q, 2) == 0);
plot(u(der(3)), v(der(3)), '-o');
plot(u(1), v(1), '-o');
plot(u(1201), v(1201), '-o');