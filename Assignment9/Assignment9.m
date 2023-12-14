syms x y z
eq1=x+3*y-2*z==5;
eq2=3*x+5*y+6*z==7;
eq3=2*x+4*y+3*z==8;
[xx,yy,zz]=solve([eq1,eq2,eq3],[x,y,z])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r=roots([1 2 -6*sqrt(10) 0 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Syms is a symbol for solving equation