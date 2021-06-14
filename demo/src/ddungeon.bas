100 SCREEN 2,0,0
110 GOSUB 2000

200 X=9: Y=9
210 LINE (8,8)-(128,128),15,B
220 LINE (8,32)-(80,40),15,BF
230 LINE -(72,64),15,BF
240 LINE (128,80)-STEP(-80,8),15,BF
250 LINE -STEP(8,-36),15,BF
260 LINE (127,127)-(120,120),5,BF
270 LINE (24,87)-(47,111),8,BF

300 ON STICK(0) GOTO 310,400,330,400,350,400,370,400
301 GOTO 400

310 P1=POINT(X,Y-1):P2=POINT(X+6,Y-1)
311 IF P1<5 AND P2<5 THEN Y=Y-1
312 GOTO 400
330 P1=POINT(X+7,Y):P2=POINT(X+7,Y+6)
331 IF P1<5 AND P2<5 THEN X=X+1
332 GOTO 400
350 P1=POINT(X,Y+7):P2=POINT(X+6,Y+7)
351 IF P1<5 AND P2<5 THEN Y=Y+1
352 GOTO 400
370 P1=POINT(X-1,Y):P2=POINT(X-1,Y+6)
371 IF P1<5 AND P2<5 THEN X=X-1
372 GOTO 400

400 IF P1=8 OR P2=8 THEN GOSUB 900
410 IF P1=5 OR P2=5 THEN GOSUB 950

700 PUT SPRITE 0,(X,Y-1),2,0

800 GOTO 300

900 run"select.bas"

950 run"select.bas"

1000 DATA 38,7C,FE,FE,FE,7C,38
1010 DATA *

2000 S=BASE(9)
2010 READ R$
2020 IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1
2030 GOTO 2010
