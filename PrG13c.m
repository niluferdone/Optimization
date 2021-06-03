function y = PrG13c(x)
% Matlab Code by A. Hedar (Nov. 23, 2005).
% Constraints
y(1) = abs(sum(x.^2)-10)-1e-1;
y(2) = abs(x(2)*x(3)-5*x(4)*x(5))-1e-1;
y(3) = abs(x(1)^3+x(2)^3+1)-1e-1;
% Variable lower bounds
for j=1:2; y(j+3) = -x(j)-2.3; end
for j=3:5; y(j+3) = -x(j)-3.2; end
% Variable upper bounds
for j=1:2; y(j+8) = x(j)-2.3; end
for j=3:5; y(j+8) = x(j)-3.2; end
% *************************************************************************
y=y'; 