'-----------------------------------------------------------
'
'					REACTOR - X
'
'Ripoff of Gotlieb's Reactor
'For Atari 8-Bit BASIC 10-Liner
'One-player game with joystick
'
'Jeff Piepmeier
'February 16, 2019
'http://jeffpiepmeier.blogspot.com/
'http://github.com/jeffpiep/
'
'Written in FastBasic
'https://github.com/dmsc/fastbasic
'Tested on Altirra
'http://www.virtualdub.org/altirra.html
'-----------------------------------------------------------

'set up memory and display
DATA player() byte =0,0,0,14,17,21,17,14,0,0,0
LL=11 'length of player array
DIM X(4),Y(4)
GR.8 'clear out ram
GR.7 'use 4 color 160x80 mode
POKE 752,1 'turn off cursor in text window

'note PM COORDINATES offset by 43,11
'set up PM mode
PM=$AC00 'empty memory made above
MOVE ADR(player),PM,LL 'put the player here because its easy
POKE 704,15 'set PM color
POKE 54279,PM/256 '             Tell ANTIC where PM RAM is
POKE 53277,3 '                     Enable PM display
POKE 559,46 '                    Enable PM DMA with 2-line res


'set up some outer-loop game logic
'8 LEVELS
'5 LIVES
'FIRE TO START
' IF HIT WALL, LOSE LIFE. IF 0 LIVES, PRINT "SCORE" AND "TRY AGAIN" - RESET SHIP. RESET LIVES. JUMP TO START
' IF HIT THE CORE, SCORE!, ADVANCE LEVEL. HAVE TO RESET THE SHIP.
' IF LEVELS COMPLETE, PRINT "YOU WON! SCORE" - RESET SHIP. RESET LIVES. JUMP BACK TO FIRE TO START.

SC=1000:LEVEL=0:NL=3

'draw the background

X(0)=-20:Y(0)=0

X0=80
Y0=40
COLOR 1

PLOT X0/2,Y0+20 : DRAWTO X0/2+20,Y0 :   DRAWTO X0/2,Y0-20 :  DRAWTO X0/2-20,Y0 :  DRAWTO X0/2,Y0+20

'inner game loop

WHILE NL

'move player locations
POKE 53248,X0+43+X(0) ' x position
MOVE PM,PM+$200+Y0+11+Y(0),LL ' y position

'update player locations
X(0)=X(0) +SGN(Y(0)) + RAND(5)-2 -SGN(X(0)/20)
Y(0)=Y(0) -SGN(X(0)) + RAND(5)-2 -SGN(Y(0)/20)

'get joystick input
S=STICK(0)
LR=(S&4=4)-(S&8=8) ' make a +/-1 for left/right
UD=(S&1=1)-(S&2=2) ' make a +/-1 for up/down

'do collision detection
POKE 53278,1 'clear collision register
PAUSE 1 'paint screen once
P0PF=PEEK(53252) 'check collision register
IF P0PF 'act on collision
ENDIF

WEND

'update outer game loop text
?,"SCORE:";SC
SOUND
