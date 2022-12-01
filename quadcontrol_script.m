%% Laboratory Project 

%% 1.1-1.4
%Variables definition

% xi = 0.4;
% omega_n = 2*pi/5; %rad/s
% StepSize = [0.5 0.1 0.01 0.001];  
% 
% %% Simulation
% 
% for i= 1:4
%     step= StepSize(i);
%     simOut= sim ('quadrotor_control');
%     
%     hold on
%     plot(simOut.y.time, simOut.y.signals.values);
%     xlabel("t (s)");
%     ylabel("y");
%     grid on;
%     box on;
%     title("Example step response of a second-order LTI system")
% 
% end


% Flexible structures like solar panels, in many space applications, are often modeled by simple second-order LTI systems

%% 1.5

natural_freq = 2*pi/5; %rad/s
csi= [0.1 0.2 0.5 0.9 1 2 4]; 

for i= csi 
    u_gain= natural_freq^2; 
    y_gain =  natural_freq^2; 
    y_dot_gain= 2* csi * natural_freq;
    simOut= sim ('quadrotor_control');
    
    hold on
    plot(simOut.y.time, simOut.y.signals.values);
    xlabel("t (s)");
    ylabel("y");
    grid on;
    box on;
    legend on; 
    title("Example step response of a second-order LTI system")
      
end


