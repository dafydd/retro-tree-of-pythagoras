   10REM Changes to Listing 2
   20REM to produce Listing 3
   30:
   40REM (C) Acorn User February 1987
   50:
   60 MODE 4
   61 TIME = 0
   70 M%=640
   71 L%=60
   72 H%=0
   73 delta=10.0
   74 a=RAD(30)
   80 MOVE M%-L%,H%
   81 DRAW M%-L%,2*L%+H%
   90 DRAW M%+L%,2*L%+H%
   91 DRAW M%+L%,H%
  100 DRAW M%-L%,H%
  110 PROCtree(M%-L%,2*L%+H%,M%+L%,2*L%+H%,M%+L%*(-1+2*SIN(a)*SIN(a)),H%+2*L%*(1+SIN(a)*COS(a)),0)
  111 PRINT TIME
  120 END
  130 :
  140 DEF FNlngth(a,b,c,d)
  150   LOCAL e,f:e=a-c:f=b-d
  160   =SQR(e*e+f*f)
  170 :
  180 DEF FNangle(x,y)
  190   IF ABS(x)>0.01 THEN 230
  200   IF ABS(y)<0.01 THEN =0
  210   IF y<0 THEN =1.5*PI
  220   =PI/2
  230   IF x<0 THEN =(ATN(y/x)+PI) ELSE =ATN(y/x)
  240 :
  250 DEF PROCtree(c11,c12,c21,c22,c31,c32,m%)
  260   LOCAL v11,v12,v21,v22,e21,e22,e31,e32,e51,e52,e61,e62,b,c,d,a2
  270   IF FNlngth(c11,c12,c21,c22)<=delta THEN ENDPROC
  280   v11=c32-c22
  281   v12=c21-c31
  290   v21=c12-c32
  291   v22=c31-c11
  300   e21=c31+v11
  301   e22=c32+v12
  310   e31=c21+v11
  311   e32=c22+v12
  320   e51=c31+v21
  321   e52=c32+v22
  330   e61=c11+v21
  331   e62=c12+v22
  332
  340   MOVE c11,c12
  341   DRAW e21,e22
  342   DRAW e31,e32
  350   DRAW c21,c22
  351   DRAW e51,e52
  352   DRAW e61,e62
  360   DRAW c11,c12
  361
  370   c11=e61
  371   c12=e62
  372   c21=e51
  373   c22=e52
  380   v11=c21-c11
  381   v12=c22-c12
  390   b=FNangle(v11,v12)
  400   IF m% MOD 2 = 0 THEN a2=PI/2-a ELSE a2=a
  410   c=a2-b
  420   d=SIN(a2)*SQR(v11*v11+v12*v12)
  430   v21=d*SIN(c)
  431   v22=d*COS(c)
  440   c31=c11+v21
  441   c32=c12+v22
  450   PROCtree(c11,c12,c21,c22,c31,c32,m%+1)
  451  
  460   c11=e21
  461   c12=e22
  462   c21=e31
  463   c22=e32
  470   v11=c21-c11
  471   v12=c22-c12
  480   b=FNangle(v11,v12)
  490   c=a2-b
  500   d=SIN(a2)*SQR(v11*v11+v12*v12)
  510   v21=d*SIN(c)
  511   v22=d*COS(c)
  520   c31=c11+v21
  521   c32=c12+v22
  530   PROCtree(c11,c12,c21,c22,c31,c32,m%+1)
  540 ENDPROC
