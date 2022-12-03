% Phase portraits of dynamical systems
% Author: Aleksandar Haber, 
% Date: December 2022
clear 
% time steps for control 
% First draw the phase portrait of the system 
x1=linspace(-2,2,20);
x2=linspace(-2,2,20);
phase_portrait(@dynamics,x1,x2)


% discretization steps
T=0.01; 
% check the discrete-time model vs. continious time model
time=[0:T:20];
initialState=[2;0.5];
% generate continious-time response
[ts,ys] = ode45(@dynamics,time,initialState);
hold on;
plot(ys(:,1),ys(:,2),'b','LineWidth',3)
plot(ys(1,1),ys(1,2),'bo') % starting point
plot(ys(end,1),ys(end,2),'ks') % ending point