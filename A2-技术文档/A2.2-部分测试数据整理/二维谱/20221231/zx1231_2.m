a=32;
b=3030;
m=linspace(1555.9,1556.21,a);
n=linspace(0,200,b);
colorbar
lims=clim;
clim([-110,0]);

for i=1:a
    x=repmat(m(1,i),1,b);
    y=n;
    z=num{:,i}';
    scatter(x,y,10,z);
    hold on;
end

