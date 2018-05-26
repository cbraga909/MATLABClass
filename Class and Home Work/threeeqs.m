function d=threeeqs(x,h)

%Define terms using substitutions given
d(1)=h(2);
d(2)=h(3);
d(3)=-(h(1).*h(3))./2;

%Create vector of all three values
d=[d(1);d(2);d(3)];

end