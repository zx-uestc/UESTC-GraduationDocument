%洛伦兹拟合计算Q值程序

%需要用户自定义的变量：
%洛伦兹拟合的横坐标范围：起止点数
lambdaBegin = 170000;
lambdaEnd = 180000;

%-------------------------------------------------------------------
if istable(num)
    num=table2array(num);
end
x=num(:,1);
y=num(:,2);
a=x(lambdaBegin:lambdaEnd,1);
b=y(lambdaBegin:lambdaEnd,1);
yprime1 = lorentzfit(a,b);
%洛伦兹拟合得到的FWHM（半高全宽）幅值：
FWHM=max(yprime1)-(max(yprime1)-min(yprime1))*sqrt(2)/2;
%绘制整个透射谱
plot(x,y,'b.-');
%绘制腔体模式处的透射谱及洛伦兹拟合曲线
figure; 
plot(a,b,'b.-','LineWidth',2)
hold on; 
plot(a,yprime1,'r-','LineWidth',2);