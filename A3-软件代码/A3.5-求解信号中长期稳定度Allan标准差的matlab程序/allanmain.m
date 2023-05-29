%% Allan

fc = 6.547729528000000e+07;%基准参数光机械振荡频率（Hz）
y=[a;b;c;d];
tau0=0.001;   %采样周期
[sigma,tau,E] = avar(y,tau0);
allanplot(sigma/fc,tau,E);
