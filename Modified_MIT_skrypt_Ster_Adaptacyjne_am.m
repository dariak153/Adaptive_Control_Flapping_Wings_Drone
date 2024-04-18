clc; clear variables; close all;

gamma_vec=[0.1,0.5,1,2,5,10];
a=1/2;
a_m=1;
b=1;
b_m=1;
theta_1_0=b_m/b;
theta_2_0=(a_m-a)/b;
am=2;
alpha=1;
kp=5;
ki=1;
kd=0.01;

t=linspace(0,100,101);
t1_vec=theta_1_0*ones(1,101);
t2_vec=theta_2_0*ones(1,101);

for i=1:6
    gamma=gamma_vec(i);
    sim("Modified_MIT_model_Ster_Adaptacyjne_am.slx");%tu pamietac o nazwie pliku

    figure
    subplot(2,3,1)
    plot(ans.modified_ym)
    hold on
    plot(ans.modified_y)
    title(['Modified MIT Porównanie odpowiedzi modelu i odpowiedzi obiektu dla \gamma = ',num2str(gamma)])
    xlabel('t [s]')
    ylabel('y, ym')
    legend('ym', 'y')

    subplot(2,3,4)
    plot(ans.modified_theta)
    title('Modified MIT \theta')
    ylabel('\theta')

    subplot(2,3,2)
    plot(ans.ym)
    hold on
    plot(ans.y)
    title('MIT Porównanie odpowiedzi modelu i odpowiedzi obiektu')
    xlabel('t [s]')
    ylabel('y, ym')
    legend('ym', 'y')

    subplot(2,3,5)
    plot(ans.theta_1)
    hold on;
    plot(ans.theta_2)
    title('MIT \theta_{1} i \theta_{2}')
    legend('\theta_{1}', '\theta_{2}')

    subplot(2,3,3)
    plot(ans.pid_y)
    title('PID odpowiedź obiektu')
    ylabel('y')
end