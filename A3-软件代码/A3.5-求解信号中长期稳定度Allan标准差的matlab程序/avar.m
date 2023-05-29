function [sigma,tau,E] = avar(y,tau0)

N=length(y);n=N;
m=floor(log2(N));
sigma=zeros(m,1);tau=zeros(m,1);E=zeros(m,1);
for k=1:m
    sigma(k,:)=sqrt(1/2*sum((y(2:end)-y(1:end-1)).^2,1)/(n-1));
    tau(k,1)=2^(k-1)*tau0;
    E(k,1)=1/sqrt(2*(n-1));
    n=floor(n/2);
    y=1/2*(y(1:2:2*n)+y(2:2:2*n));
end

end

