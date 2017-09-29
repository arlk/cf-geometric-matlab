%{
Geometric control for crazyflie
Arun Lakshmanan
%}


%% Pre-setup
close all;
clear;
clc;

addpath('functions/control_utils');
addpath('functions/model_utils');
addpath('functions/plot_utils');

load_system('cf_model')

%% Sim time
T = 30;
enable_est = 1;

%% Initialize crazyflie
ic  = [0 0 0 0 0 0 0 0 0 0 0 0];
crazyflie
geometric_control
est_params
if enable_est
  set_param('cf_model/GC_Estimator','commented','off');
else
  set_param('cf_model/GC_Estimator','commented','through');
end

%% Simulate
sim('cf_model', T);

%% Plot
plot_traj(state, ref_path);
