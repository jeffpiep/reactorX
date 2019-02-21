DA.D()W.=-1,1,2,2,1,-1,-2,-2,-1,1,2:DA.x()W.=0,10,0,-10,0:DA.y()W.=-20,20,20,20,0:DI.a(4),U(4),V(4):K=0:T=15:G.7:P.752,1
L=5:C=T-1:B=$A000:MS.B,1024,0:P.54279,$a0:P.53277,3:P.559,46:D.704,$440F:D.706,$4444:D.709,$404F:S=0:Q=80:w=40:R=19:C.1
exe.O:?"Push FIRE":W.STRIG(0):WE.:CLS:W.K<3ANDL>0:a(0)=0:incC:se.1,C,15:i.C MODT=0:C.2:R=C/T:exe.O:end.:P.53248,124+X(0)
m.adr("     !!q°q!!     ")+1,B+561+Y(0),17:f.i=1to3:m.adr("     0Xx0     ")+1,B+561+i*128+Y(i),14:E=(125+X(i))*(a(i)=0)
P.53248+i,E:n.i:P.53278,1:pa.1:f.i=0to3:U(i)=0:V(i)=0:M=peek(53252+i):i.M&1=1:a(i)=1:i.i=0:ms.$A200,128,0:decL:Y(i)=-2*R
X(i)=0:ex.:e.:X(i)=-123:incK:end.:eli.M&2=2:F=Q:j=5:exe._:end.:N=peek(53260+i):i.N>0:i.N&1=1:F=w:j=0:S=S+5:eli.N&2=2:j=1
eli.N&4=4:j=2:eli.N&8=8:j=3:end.:exe._:end.:n.i:i.F>0:s.0,F,10,15:e.:s.:end.:F=0:f.i=1to3:E=SGN((X(i)-X(0))/9)-U(i)+1
X(i)=X(i)+RAND(3)-E:Y(i)=Y(i)-SGN((Y(i)-Y(0))/9)+V(i)+RAND(3)-1:n.i:G=STICK(0):P.657,2:?S,L;:E=V(0)+2*((G&1=1)-(G&2=2))
Y(0)=Y(0)+E:X(0)=X(0)+U(0)+2*((G&4=4)-(G&8=8)):WE.:S.:i.K=3anda(0)=0:?,"You Win!";:e.:?,"*MELTDOWN*";:end.:do:l.:pro._
U(i)=U(i)+2*SGN(X(i)-X(j)):V(i)=V(i)+2*SGN(Y(i)-Y(j)):endp.:pro.O:pl.Q-R,w+2*R:f.p=1to8:dr.Q+D(p)*R,w+D(p+2)*R:n.p:endp.