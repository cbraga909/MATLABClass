%In-Class Problem: Therodynamic Properties

temp=[(100:50:300),400,500];
e=[2506.7 2582.8 2658.1 2733.7 2810.4 2967.9 3131.6];

en215=interp1(temp,e,215)
temp=interp1(e,temp,2600)

%%
%Expanding the steam tables
temp=[(100:50:300),400,500]';
e=[2506.7 2582.8 2658.1 2733.7 2810.4 2967.9 3131.6]';
volume=[1.6958 1.9364 2.172 2.406 2.639 3.103 3.565]';
enthalpy=[2676.2 2776.4 2875.3 2974.3 3074.3 3278.2 3488.1]';

properties=[volume,e,enthalpy];
newtemp=[100:25:500]';
newprop=interp1(temp,properties,newtemp);
array2table([newtemp,newprop],'VariableNames',{'Temperature','Volume','Energy','Enthalpy'})



