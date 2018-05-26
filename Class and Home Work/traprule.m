function I=traprule(f1,a,b,n)
clearvars -EXCEPT -REGEXP f1 a b n
clc
n2=n+1;
x=linspace(a,b,n2);
f=@(x)(f1);
g=f(x);
for k=1:length(x)
    if k==1||k==n2
        h=g(k);
    elseif k==
end

