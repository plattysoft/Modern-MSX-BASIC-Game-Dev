100 COLOR 15,1,1
110 SCREEN 2,2,0

120 DEFINT A-Z
130 X=96

140 FOR I=0 TO 31
150   READ A$:A=VAL("&H"+A$)
160	 VPOKE I,A
170   VPOKE &H2000+I,&HF0
180   VPOKE &H3800+I,A
190 NEXT I

200 S=STICK(0)
230 IF S=3 THEN X=X+8
270 IF S=7 THEN X=X-8

290 TIME=0
300 IF TIME<3 GOTO 300

310 PUT SPRITE 0,(X,48),14,0

320 C=X\8

330 VPOKE &H1860+C  ,0
331 VPOKE &H1860+C+1,2
332 VPOKE &H1880+C  ,1
333 VPOKE &H1880+C+1,3

340 VPOKE &H1860+C-1,4
341 VPOKE &H1860+C+2,4
342 VPOKE &H1880+C-1,4
343 VPOKE &H1880+C+2,4

390 GOTO 200

1060 ' SPACESHIP
1070 DATA 01,01,01,03,03,02,06,07,0F,0E,1C,3C,7E,F7,E3,C1
1080 DATA 00,00,00,80,80,80,C0,C0,E0,E0,70,78,FC,DE,8E,06
