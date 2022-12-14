%% Laboratory 2

close all;
clear;
clc;

%Initialization of variables
simul_t = 10; 

M = 1; %kg
G = 9.8; %m/s^2
Kt = 3.575*10^(-5); %N/(rad/s)^2

Z_0 = 2; 
Omega_0 =  sqrt((G*M)/Kt);
U_0 = Omega_0;

%% Plots
input = [100 1000 5000]; %rpm
input = input *2 * pi /60; % rad/s

f1= figure(1);
hold on; 

for i=1:size(input)
    
    du= input(i);
    sim('quadrotor_control.slx');
    plot(Z_Linear.time,Z.signals.values);
    
end

xlabel('t (s)');
ylabel('Z');
grid on;
box on;
title('Step response of a quadrotor with linear models');

% f2= figure(2);
% hold on;
% 
% for i=1:size(input)
%     
%     du= input(i);
%     sim('quadrotor_control.slx');
%     plot (ans.Z_Linear.time, ans.Z.signals.values);
%     
% end
% xlabel('t (s)');
% ylabel('Z');
% grid on;
% box on;
% title('Step response of a quadrotor with non-linear models');