100 COLOR 15,1,1
110 DEFINT A-Z
120 SCREEN 2,2,0
130 GOSUB 10000
140 X=8:Y=8

200 PUT SPRITE 0,(X,Y-1),2,0

300 ON STICK(0) GOTO 310,301,330,301,350,301,370,301
301 P1=VPEEK(&H1800+X\8+(Y\8)*32):P2=P1
309 GOTO 400
310 P1=VPEEK(&H1800+X\8+((Y-1)\8)*32)
311 P2=VPEEK(&H1800+(X+6)\8+((Y-1)\8)*32)
312 IF P1<1 AND P2<1 THEN Y=Y-1
313 GOTO 400
330 P1=VPEEK(&H1800+(X+7)\8+((Y)\8)*32)
331 P2=VPEEK(&H1800+(X+7)\8+((Y+6)\8)*32)
332 IF P1<1 AND P2<1 THEN X=X+1
333 GOTO 400
350 P1=VPEEK(&H1800+(X)\8+((Y+7)\8)*32)
351 P2=VPEEK(&H1800+(X+6)\8+((Y+7)\8)*32)
352 IF P1<1 AND P2<1 THEN Y=Y+1
353 GOTO 400
370 P1=VPEEK(&H1800+(X-1)\8+((Y)\8)*32)
371 P2=VPEEK(&H1800+(X-1)\8+((Y+6)\8)*32)
372 IF P1<1 AND P2<1 THEN X=X-1
373 GOTO 400

400 IF P1=2 OR P2=2 THEN GOSUB 600
410 IF P1=3 OR P2=3 THEN GOSUB 700
500 GOTO 200

600 END

700 END

1000 DATA 00,00,00,00,00,00,00,00
1010 DATA 00,7F,7F,7F,00,F7,F7,F7
1020 DATA FD,EE,DF,33,FD,EE,DF,33
1030 DATA 3C,7F,DB,FF,FF,DB,7E,3C
1040 DATA *
1100 DATA 00,00,00,00,00,00,00,00
1110 DATA E0,E0,E0,E0,E0,E0,E0,E0
1120 DATA 68,68,68,68,68,68,68,68
1130 DATA D0,D0,D0,D0,D0,D0,D0,D0
1140 DATA *
1200 DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1210 DATA 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1220 DATA 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1230 DATA 1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1240 DATA 1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1250 DATA 1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1260 DATA 1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1270 DATA 1,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1280 DATA 1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1290 DATA 1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1300 DATA 1,0,0,2,2,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1310 DATA 1,0,0,2,2,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1320 DATA 1,0,0,2,2,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1330 DATA 1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1340 DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
1350 DATA *

1400 DATA 38,7C,FE,FE,FE,7C,38
1410 DATA *

10000 GOSUB 10100
10010 GOSUB 10200
10020 GOSUB 10300
10030 GOSUB 10400
10050 RETURN

10100 'LOAD PATTERNS
10110 S=0
10120 READ R$
10130 IF R$="*" THEN RETURN ELSE R=VAL("&H"+R$)
10140 VPOKE S,R
10150 VPOKE 2048+S,R
10160 VPOKE 4096+S,R
10170 S=S+1:GOTO 10120

10200 'LOAD COLORS
10210 S=0
10220 READ R$
10230 IF R$="*" THEN RETURN ELSE R=VAL("&H"+R$)
10240 VPOKE &H2000+S,R
10250 VPOKE &H2800+S,R
10260 VPOKE &H3000+S,R
10270 S=S+1:GOTO 10220

10300 'LOAD NAMES
10310 S=&H1800
10320 READ R$
10330 IF R$="*" THEN RETURN
10340 VPOKE S,VAL("&H"+R$)
10350 S=S+1:GOTO 10320

10400 'LOAD SPRITES
10410 S=&H3800 
10420 READ R$
10430 IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1
10440 GOTO 10420
