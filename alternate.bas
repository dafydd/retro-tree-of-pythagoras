   10REM Changes to Listing 2
   20REM to produce Listing 3
   30:
   40REM (C) Acorn User February 1987
   50:
   60MODE 4
   70M%=640:L%=60:H%=0:delta=10.0:a=RAD(30)
   80MOVE M%-L%,H%:DRAW M%-L%,2*L%+H%
   90DRAW M%+L%,2*L%+H%:DRAW M%+L%,H%
  100DRAW M%-L%,H%
  110PROCtree(M%-L%,2*L%+H%,M%+L%,2*L%+H%,M%+L%*(-1+2*SIN(a)*SIN(a)),H%+2*L%*(1+SIN(a)*COS(a)),0)
  120END
  130:
  140DEF FNlngth(a,b,c,d)
  150LOCAL e,f:e=a-c:f=b-d
  160=SQR(e*e+f*f)
  170:
  180DEF FNangle(x,y)
  190IF ABS(x)>0.01 THEN 230
  200IF ABS(y)<0.01 THEN =0
  210IF y<0 THEN =1.5*PI
  220=PI/2
  230IF x<0 THEN =(ATN(y/x)+PI) ELSE =ATN(y/x)
  240:
  250DEF PROCtree(c11,c12,c21,c22,c31,c32,m%)
  260LOCAL v11,v12,v21,v22,e21,e22,e31,e32,e51,e52,e61,e62,b,c,d,a2
  270IF FNlngth(c11,c12,c21,c22)<=delta THEN ENDPROC
  280v11=c32-c22:v12=c21-c31
  290v21=c12-c32:v22=c31-c11
  300e21=c31+v11:e22=c32+v12
  310e31=c21+v11:e32=c22+v12
  320e51=c31+v21:e52=c32+v22
  330e61=c11+v21:e62=c12+v22
  340MOVE c11,c12:DRAW e21,e22:DRAW e31,e32
  350DRAW c21,c22:DRAW e51,e52:DRAW e61,e62
  360DRAW c11,c12
  370c11=e61:c12=e62:c21=e51:c22=e52
  380v11=c21-c11:v12=c22-c12
  390b=FNangle(v11,v12)
  400IF m% MOD 2 = 0 THEN a2=PI/2-a ELSE a2=a
  410c=a2-b
  420d=SIN(a2)*SQR(v11*v11+v12*v12)
  430v21=d*SIN(c):v22=d*COS(c)
  440c31=c11+v21:c32=c12+v22
  450PROCtree(c11,c12,c21,c22,c31,c32,m%+1)  
  460c11=e21:c12=e22:c21=e31:c22=e32
  470v11=c21-c11:v12=c22-c12
  480b=FNangle(v11,v12)
  490c=a2-b
  500d=SIN(a2)*SQR(v11*v11+v12*v12)
  510v21=d*SIN(c):v22=d*COS(c)
  520c31=c11+v21:c32=c12+v22
  530PROCtree(c11,c12,c21,c22,c31,c32,m%+1)
  540ENDPROC
