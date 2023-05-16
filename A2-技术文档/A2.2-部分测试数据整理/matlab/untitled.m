[yprime params resnorm residual jacobian] = lorentzfit(x,y,[],[],'3c');
params(2)
figure;
plot(x,y,'b.','LineWidth',2) 
hold on;
plot(x,yprime,'r-','LineWidth',2)