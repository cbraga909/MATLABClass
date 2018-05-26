g={'W','w','M','m','A','a'};

wstat(1)=strcat(g(1),g(1));
wstat(2)=strcat(g(1),g(2));
wstat(3)=strcat(g(2),g(2));

mstat(1)=strcat(g(3),g(3));
mstat(2)=strcat(g(3),g(4));
mstat(3)=strcat(g(4),g(4));

astat(1)=strcat(g(5),g(5));
astat(2)=strcat(g(5),g(6));
astat(3)=strcat(g(6),g(6));

i=1;

while i<=3
    genes(1:3,i)=strcat(wstat(i),mstat(1));
    genes(4:6,i)=strcat(wstat(i),mstat(2));
    genes(7:9,i)=strcat(wstat(i),mstat(3));
    i=i+1;
end
    
almostdone=genes;

genes([1,4,7],:)=strcat(almostdone([1,4,7],:),astat(1));
genes([2,5,8],:)=strcat(almostdone([2,5,8],:),astat(2));
genes([3,6,9],:)=strcat(almostdone([3,6,9],:),astat(3));