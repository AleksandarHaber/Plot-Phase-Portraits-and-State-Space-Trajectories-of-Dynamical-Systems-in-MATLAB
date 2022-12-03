% define the nonlinear, continious-time, state-space model
% t is time
% x is the vector of state coordinates
% Author: Aleksandar Haber
% Date: December 2022
function dx = dynamics(t,x)
%dx=[x(2); -sin(x(1));];
%dx=[-2*x(1);-3*x(2)];
dx=[-1*x(1)-3*x(2);3*x(1)-1*x(2)];
end