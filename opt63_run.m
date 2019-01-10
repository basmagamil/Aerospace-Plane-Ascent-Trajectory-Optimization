clear all;
%load('ws_tables.mat')
global alpha_array T_array t_final m0 h_final V_final Qd_max Q_max;
global m0_inv V_final_inv h_final_inv t_final_inv Q_max_inv Qd_max_inv;
m0=408600;
%m0=39600;
t_final=900;
V_final=7.86e3;
h_final=75e3;
Qd_max=100;
Q_max=350000;
best_Input_History=[];
warning('off','all')

m0_inv=1/m0;
V_final_inv=1/V_final;
h_final_inv=1/h_final;
t_final_inv=1/t_final;
Q_max_inv=1/Q_max;
Qd_max_inv=1/Qd_max;