%% Allan

fc = 6.547729528000000e+07;%��׼�������е��Ƶ�ʣ�Hz��
y=[a;b;c;d];
tau0=0.001;   %��������
[sigma,tau,E] = avar(y,tau0);
allanplot(sigma/fc,tau,E);
