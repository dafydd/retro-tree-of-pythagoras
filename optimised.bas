10 REM Tree of Pythagoras
20 REM by P G McTiernan
30 REM for BBC B/B+/M/C/E
40 REM (c) Acorn User June 1987
50 :
60 MODE 4
70 RESTORE 350
80 FOR N% = 1 TO 2
90 READ M%,L%,H%,delta,a
100 CLS
110 a=RAD(a)
120 s2=SIN(a)*SIN(a)
130 sc=SIN(a)*COS(a)
140 PROCtree(M%-L%,H%,M%+L%,H%)
150 REPEAT UNTIL GET
160 NEXT
170 END
180 :
190 DEF PROCtree(x1,y1,x2,y2)
200 LOCAL x3,x4,x5,y3,y4,y5,l,dx,dy 
210 dx=x2-x1:dy=y2-y1 
220 l=SQR(dx*dx+dy*dy) 
230 x4=x1-dy:x3=x2-dy 
240 y4=y1+dx:y3=y2+dx 
250 x5=x4+dx*s2-dy*sc 
260 y5=y4+dy*s2+dx*sc 
270 MOVE x4,y4 
280 DRAW x1,y1:DRAW x2,y2 
290 DRAW x3,y3:DRAW x4,y4 
300 IF l<=delta THEN ENDPROC 
310 PROCtree (x4,y4,x5,y5) 
320 PROCtree (x5,y5,x3,y3) 
330 ENDPROC 
340 : 
350 DATA 640,110,0,10,45 
360 DATA 375,90,150,15,30
