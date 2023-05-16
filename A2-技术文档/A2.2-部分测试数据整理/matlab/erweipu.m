m=linspace(1564.5,1567,252);
n=linspace(0,300000000,3030);
colorbar
lims=clim;
clim([-110,0]);

for i=1:252
    x=repmat(m(1,i),1,3030);
    y=n;
    z=num{:,i}';
    scatter(x,y,10,z);
    hold on;
end

