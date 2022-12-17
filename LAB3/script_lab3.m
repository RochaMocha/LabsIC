%% Laboratory 3 - Session 5

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

%% 3.4 Root-Locus of a transfer function

%transfer function 1/(s^2)

 s= tf(-1, [1 0 0]); 
 rlocus (s)