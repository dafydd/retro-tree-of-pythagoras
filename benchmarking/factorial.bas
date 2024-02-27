10 FOR X = 0 TO 50
20 PRINT X,FNfactorial(X)
30 NEXT
40 END
100 DEF FNfactorial(n)
110  IF n <= 1 THEN = 1 ELSE = n * FNfactorial(n-1)
