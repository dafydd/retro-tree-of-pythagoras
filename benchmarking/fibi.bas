10 FOR X = 0 TO 50
20 PRINT X,FNfibonacci_i(X)
30 NEXT
40 END
50 :
100 DEF FNfibonacci_i(N)
110  LOCAL F, I, P, T
120  IF N < 2 THEN = N
130  P = 1
140  FOR I = 1 TO N
150  T = F
160  F = P+F
170  P = T
180  NEXT
190  = F
200:

