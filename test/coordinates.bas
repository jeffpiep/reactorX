DATA player() byte =0,0,0,14,17,21,17,14,0,0,0
LL=11
DIM X(4),Y(4)

GR.8:GR.5:POKE 752,1
gr.7

'PM COORDINATES
'MIN X=48  $30
'MAX X=200 $C8
'MIN Y=16  $10
'MAX Y=100 $64

PM=$AC00
MOVE ADR(player),PM,LL
POKE 704,15
POKE 54279,PM/256:'             Tell ANTIC where PM RAM is
POKE 53277,3:'                     Enable PM display
POKE 559,46:'                    Enable PM DMA with 2-line res


'8 LEVELS
'5 LIVES
'FIRE TO START
' IF HIT WALL, LOSE LIFE. IF 0 LIVES, PRINT "SCORE" AND "TRY AGAIN" - RESET SHIP. RESET LIVES. JUMP TO START
' IF HIT THE CORE, SCORE!, ADVANCE LEVEL. HAVE TO RESET THE SHIP.
' IF LEVELS COMPLETE, PRINT "YOU WON! SCORE" - RESET SHIP. RESET LIVES. JUMP BACK TO FIRE TO START.
NL=3

X(0)=0:Y(0)=0
X0=80
Y0=40
COLOR 1
PLOT X0,Y0

WHILE NL

pause 2

MOVE PM,PM+$200+Y(0)+Y0+11,LL
POKE 53248,X(0)+X0+43

S=STICK(0)
LR=(S&4=4)-(S&8=8)
UD=(S&1=1)-(S&2=2)


X(0)=X(0) + LR
Y(0)=Y(0) + UD

? X(0),Y(0)

WEND
