100 COLOR 15,1,1
110 SCREEN 2

120 ' LOAD PATTERNS AND COLORS
120 FOR I=0 TO &H1F
130  READ R
140  VPOKE I,R
150  VPOKE &H2000+I, &H20
160 NEXT I

200 ' POPULATE THE SCREEN
200 FOR I=&H1800 TO &H18FF
210   VPOKE I, I MOD 2
220 NEXT I

300 ' MAIN LOOP
300 IF CF=1 THEN CF=0 ELSE CF=1
310 S=16+CF*8
320 FOR I=0 TO 7
330   VPOKE 8+I, VPEEK(S+I)
340   VPOKE &H2000+8+I, VPEEK(&H2000+S+I)
350 NEXT I
360 IF TIME<20 THEN 360 ELSE TIME=0
370 GOTO 300

1000 DATA &H00,&H00,&H00,&H00,&H00,&H00,&H00,&H00
1010 DATA &H18,&H3C,&H7E,&HDB,&HFF,&H24,&H5A,&HA5
1020 DATA &H18,&H3C,&H7E,&HDB,&HFF,&H24,&H5A,&HA5
1030 DATA &H18,&H3C,&H7E,&HDB,&HFF,&H5A,&H81,&H42
