function J = opt63_test(x)
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
sim('model63.slx');

Qt_end=Q_t(end)
Qdt_end=Qd_t(end)
mt_end=m_t(end)
Vt_end=V_t(end)
ht_end=r_t(end)-6378e3
tt_end=t_t(end)

figure
subplot(3,3,1);
plot(alpha_array)
title('Angle of Attack')
subplot(3,3,2);
plot(T_array)
title('Thrust')
subplot(3,3,3);
plot(t_t,q_t)
title('Dynamic Pressure')
subplot(3,3,4);
plot(t_t,r_t-6378e3)
title('Altitude')
subplot(3,3,5);
plot(t_t,V_t)
title('Velocity')
subplot(3,3,6);
plot(t_t,gamma_t)
title('Gamma')
subplot(3,3,7);
plot(t_t,m_t)
title('Mass')
subplot(3,3,8);
plot(t_t,Q_t)
title('Heat Dissipation')
subplot(3,3,9);
plot(t_t,Qd_t)
title('Heat Dissipation Rate')
grid on;
end

