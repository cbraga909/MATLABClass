k=1;
for k=[1:length(RamsFin)]
    RamsFin(k)=strfind(RamsFin(k),'1st');
    if RamsFin{k}==[1]
        RamsFin{k}=1;
    else
        RamsFin{k}=0;
    end
end
RamsFin=cell2mat(RamsFin)

