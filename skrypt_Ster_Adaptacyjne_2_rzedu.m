clc; clear variables; close all;

gamma_vec=[1,2,5,10];
k=1;
km=0.25;
t=linspace(0,100,101);
theta_0=(km/k)*ones(1,101);

for i=1:4
    gamma=gamma_vec(i);
    sim("model_Ster_Adaptacyjne_2_rzedu.slx");%tu pamietac o nazwie pliku

    figure
    subplot(2,1,1)
    plot(ans.ym)
    hold on
    plot(ans.y)
    title('Porównanie odpowiedzi modelu i odpowiedzi obiektu')
    xlabel('t [s]')
    ylabel('y, ym')
    legend('ym', 'y')

    subplot(2,1,2)
    plot(ans.theta_hat)
    xlabel('t [s]')
    ylabel('\theta\_hat, \theta_0')
    title('\theta\_hat a \theta_0')
    hold on;
    plot(t,theta_0)
    legend('\theta\_hat','\theta_0')
end