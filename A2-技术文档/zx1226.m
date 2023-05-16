%二维谱扫描程序

%需要用户自定义的变量：
%激光源波长设置：起止+采样点数
lambdaBegin = 1564.5;
lambdaEnd = 1567.1;
lambdaNum = 252;
%频谱仪频率设置：起止+采样点数
frequencyBegin = 0;
frequencyEnd = 300000000;
frequencyNum = 3030; %默认


m=linspace(lambdaBegin,lambdaEnd,lambdaNum);
n=linspace(frequencyBegin,frequencyEnd,frequencyNum);
colorbar
lims=clim;
clim([-110,0]);
for i=1:lambdaNum
    x=repmat(m(1,i),1,frequencyNum);
    y=n;
    z=num{:,i}';
    scatter(x,y,10,z);
    hold on;
end