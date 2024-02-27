10 FOR X = 0 TO 50
20 PRINT X,FNfibonacci_r(X)
30 NEXT
40 END
50 :
100 DEF FNfibonacci_r(N)
110   IF N < 2 THEN = N
120   = FNfibonacci_r(N-1) + FNfibonacci_r(N-2)
130:
