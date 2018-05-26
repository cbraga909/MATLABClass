%Work In Piston-Cylinder device
format short
syms P v n R T V1 V2

idealgaslaw=sym('P*v=n*R*T');
P=solve(idealgaslaw, 'P');
W=int(P,'v',V1,V2)
Work=subs(W,{n, R, T, V1, V2},{1,8.314, 300, 1, 5})