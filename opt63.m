function J = opt63(x)
%bounds--> lower: [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020]
%          upper: [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]
%alpha bounds--> upper: deg2rad(11.5)=0.2 & lower: -0.2
%thrust bounds--> upper: m0*9.8 & lower: 1
global alpha_array T_array t_final m0 h_final V_final Qd_max Q_max;
global m0_inv V_final_inv h_final_inv t_final_inv Q_max_inv Qd_max_inv;
t=[linspace(0,t_final,10)]'; %change tfinal to 1000 and start from 0 not 100
alpha=0.2.*x(1:10)';
T=(1*9.8*m0).*x(11:20)';
alpha_array=timeseries(alpha,t);
T_array=timeseries(T,t);
try sim('model63.slx');
catch 
    J=100000;
    return
end

%%% Second Cost Function %%%
%tao=round(linspace(0,1,length(V_t)).^4,3);
tao=round(linspace(0,1,length(V_t)).^7,3);
%J=-10*m_t(end)*m0_inv+1179*V_final_inv*sum(abs(V_t-V_final)'.*tao)+75*h_final_inv*sum(abs((r_t-6378e3)-h_final)'.*tao)-18000*t_final_inv*t_t(end)+20*(3.5*Q_max_inv*max(Q_t)+Qd_max_inv*max(Qd_t));
J=-10*m_t(end)*m0_inv+2500*V_final_inv*sum(abs(V_t-V_final)'.*tao)+200*h_final_inv*sum(abs((r_t-6378e3)-h_final)'.*tao)-18000*t_final_inv*t_t(end)+20*(3.5*Q_max_inv*max(Q_t)+Qd_max_inv*max(Qd_t));
end

