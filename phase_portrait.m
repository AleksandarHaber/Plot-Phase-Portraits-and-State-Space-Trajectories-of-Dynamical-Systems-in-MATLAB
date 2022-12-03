% Function that sketches a phase portrait of a dynamical system
% Author: Aleksandar Haber, December 2022

% f is a function that defines the nonlinear state-space model
% this function should be defined in an external file

% vectors x1 and x2 define the coordinates of points
% in a rectangular region that is defined by the meshgrid function
function phase_portrait(f,x1,x2)
[x,y] = meshgrid(x1,x2);
u = zeros(size(x));
v = zeros(size(x));
% we can use a single loop over each element to compute the derivatives at each point 
t=0; 
% we want the derivatives at each point at t=0, i.e. the starting time
[d1,d2]=size(x);

for i = 1:d1
    for j=1:d2
    Yprime = f(t,[x(i,j); y(i,j)]);
    u(i,j) = Yprime(1);
    v(i,j) = Yprime(2);
    end
end


% for i = 1:d1
%     for j=1:d2
%             Vmod = sqrt(u(i,j)^2 + v(i,j)^2);
%             u(i,j) = u(i,j)/Vmod;
%             v(i,j) = v(i,j)/Vmod;
%     end
% end

figure(1)
hold on
% quiver(X,Y,U,V) plots velocity vectors as arrows with components (u,v) at the points (x,y)
quiver(x,y,u,v,'r'); 
xlabel('x_{1}')
ylabel('x_{2}')
axis tight equal;
box
end