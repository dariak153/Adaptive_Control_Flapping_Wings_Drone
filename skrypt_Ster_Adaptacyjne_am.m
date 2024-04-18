clc; clear variables; close all;

gamma_vec=[1,2,5,10];
a=1/2;
a_m=1;
b=1;
b_m=1;
theta_1_0=b_m/b;
theta_2_0=(a_m-a)/b;
am=2;

t=linspace(0,100,101);
t1_vec=theta_1_0*ones(1,101);
t2_vec=theta_2_0*ones(1,101);

for i=1:4
    gamma=gamma_vec(i);
    sim("model_Ster_Adaptacyjne_am.slx");%tu pamietac o nazwie pliku

    figure
    subplot(3,1,1)
    plot(ans.ym)
    hold on
    plot(ans.y)
    title('Porównanie odpowiedzi modelu i odpowiedzi obiektu')
    xlabel('t [s]')
    ylabel('y, ym')
    legend('ym', 'y')

    subplot(3,1,2)
    plot(ans.theta_1)
    hold on;
    plot(t,t1_vec);
    title('\theta_{1} i \theta_{1 final}')
    xlabel('t [s]')
    ylabel('\theta_1, \theta_{1 final}')
    legend('\theta_1', '\theta_{1 final}')

    subplot(3,1,3)
    plot(ans.theta_2)
    hold on;
    plot(t,t2_vec);
    title('\theta_{2} i \theta_{2 final}')
    xlabel('t [s]')
    ylabel('\theta_2, \theta_{2 final}')
    legend('\theta_2', '\theta_{2 final}')
end