a=62;
b=3030;
m=linspace(1549.6,1550.21,a);
n=linspace(0,200000000,b);
colorbar
lims=clim;
clim([-110,0]);

for i=1:a
    x=repmat(m(1,i),1,b);
    y=n;
    z=num{:,i}';
    scatter(x,y,20,z);
    hold on;
end

