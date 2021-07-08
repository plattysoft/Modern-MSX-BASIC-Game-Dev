100 COLOR 2,1,1: SCREEN 2,2,0
110 GOSUB 2000
120 X1=32:Y1=32:X2=64:Y2=32
130 SC=4:BC=4

200 PUT SPRITE 0,(X1,Y1),11,0
210 PUT SPRITE 1,(X2,Y2),2,1
220 PUT SPRITE 2,(0,0),BC,2
230 PUT SPRITE 3,(16,0),SC,2

250 SPRITE ON: ON SPRITE GOSUB 600
300 S=STICK(0)
310 IF S=1 THEN Y1=Y1-1
320 IF S=3 THEN X1=X1+1
330 IF S=5 THEN Y1=Y1+1
340 IF S=7 THEN X1=X1-1
350 A$=INKEY$
360 IF A$="w" THEN Y2=Y2-1
370 IF A$="d" THEN X2=X2+1
380 IF A$="s" THEN Y2=Y2+1
390 IF A$="a" THEN X2=X2-1
400 IF ABS(X1-X2)<16 AND ABS(Y1-Y2)<16 THEN BC=8 ELSE BC=4
500 GOTO 200

600 SPRITE OFF: SC=8
610 RETURN 

1000 DATA 00,00,3F,3F,30,30,30,30,30,30,30,30,3F,3F,00,00
1010 DATA 00,00,FC,FC,00,00,00,00,00,00,00,00,FC,FC,00,00
1020 DATA 00,00,3F,3F,00,00,00,00,00,00,00,00,3F,3F,00,00
1030 DATA 00,00,FC,FC,0C,0C,0C,0C,0C,0C,0C,0C,FC,FC,00,00
1040 DATA 00,07,0F,1F,3F,7F,7F,7F,7F,7F,3F,1F,0F,07,00,00
1050 DATA 00,C0,E0,F0,F8,FC,FC,FC,FC,FC,F8,F0,E0,C0,00,00
1060 DATA *

2000 ' LOAD SPRITES
2010 S=BASE(9)
2020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 2020