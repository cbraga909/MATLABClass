A=[3 2 5; 4 5 -2; 1 1 1]
B=[22; 8; 6]
leftdiv=A\B

A1=[A; 2 -4 -7]
B1=[B; -27]
leftdiv1=A1\B1

A2=[A(1:2,:)]
B2=B(1:2)
leftdiv2=A2\B2
    