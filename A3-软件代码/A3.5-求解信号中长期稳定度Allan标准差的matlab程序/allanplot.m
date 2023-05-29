function allanplot(sigma,tau,E)
loglog(tau(:,1),sigma(:,1),'-+',tau(:,1),[sigma(:,1).*(1+E),sigma(:,1).*(1-E)],'r--');grid on
xlabel('t/s');
ylabel('\sigma_A\rm(\tau)');
legend('allan����˫����ͼ','allan����˫�������ͼ')
title('allan����˫����ͼ')
end