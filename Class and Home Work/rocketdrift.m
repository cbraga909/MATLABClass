droguetype=menu('Choose drogue chute type','Parasheet (flat sheet)','Parachute (dome-shaped)');
if droguetype==1
    dragcoef=0.75;
else
    dragcoef=1.5;
end

diam=input('Input drogue parachute diameter in inches\n');
a=(diam/2)*0.0254;
area=(3*sqrt(3)*(a^2))/2;

tempf=input('Input outside temperature in degrees Fahrenheit\n');
tempc=5/9*(tempf-32);
tempk=tempc+273.15;

dewf=input('Input dew point temperature in degrees Fahrenheit\n');
dewc=5/9*(dewf-32);

inHg=input('Input air pressure in inHg\n');
pressure=inHg*3386.389;

eso=6.1078;
p=(0.99999683+dewc*(-0.90826951*10^-2 + dewc*(0.78736169*10^-4+dewc*(-0.61117958*10^-6+dewc*(0.43884187*10^-8+dewc*(-0.29883885*10^-10+dewc*(0.21874425*10^-12+dewc*(-0.17892321*10^-14+dewc*(0.11112018*10^-16+dewc*(-0.30994571*10^-19))))))))));
es=eso/(p.^8);

rho=(pressure/(287.05*tempk))+(es/(461.495*tempk));

m=input('Input mass of rocket in kilograms\n');
g=9.81;

droguev=sqrt(2*m*g/(dragcoef*rho*area));

droguevft=droguev*3.28084;
droguedist=input('Distance rocket will fall on drogue chute, in feet\n');
droguetime=droguedist/droguevft;

maintype=menu('Choose main parachute type','Parasheet (flat sheet)','Parachute (dome-shaped)');
if maintype==1
    maindragc=0.75;
else
    maindragc=1.5
end

maind=input('Input main parachute diameter\n');
maina=(maind/2)*0.0254;
mainarea=(3*sqrt(3)*(maina^2))/2;

mainv=sqrt(2*m*g/(maindragc*rho*mainarea));

mainvft=mainv*3.28084;
maindist=input('Distance rocket will fall on main chute, in feet\n');
maintime=maindist/mainvft;

wind=input('Input windspeed in mph \n');
windfts=wind*5280/3600;
droguedrift=windfts*droguetime
maindrift=windfts*maintime
drift=droguedrift+maindrift