'-----------------------------------------------------------
'
'					REACTOR - X
'
'Ripoff of Gotlieb's Reactor
'For Atari 8-Bit BASIC 10-Liner
'One-particle game with joystick
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
data x() WORD = 10,20,0,20
data y() WORD = 10,0,20,0
x(1)=-20

data particle() byte =0,0,0,0,6,9,9,6,0,0,0,0
partLoc = adr(particle)
partLen = 12 'length of particle array
data player() byte = 0,0,0,4,14,27,14,4,0,0,0
playerLoc = adr(player)
playerLen = 11

graphics 7 'use 4 color 160x80 mode
poke 752,1 'turn off cursor in text window

'note PM COORDINATES offset by 43,11
'set up PM mode
PM=$A000 'empty memory made above
for i=0 to 3
poke 704+i,15 'set PM color
next i

poke 54279,PM/256 '             Tell ANTIC where PM RAM is
poke 53277,3 '                     Enable PM display
poke 559,46 '                    Enable PM DMA with 2-line res

'set up some outer-loop game logic
'8 LEVELS
'5 LIVES
'FIRE TO START
' IF HIT WALL, LOSE LIFE. IF 0 LIVES, PRINT "SCORE" AND "TRY AGAIN" - RESET SHIP. RESET LIVES. JUMP TO START
' IF HIT THE CORE, SCORE!, ADVANCE LEVEL. HAVE TO RESET THE SHIP.
' IF LEVELS COMPLETE, PRINT "YOU WON! SCORE" - RESET SHIP. RESET LIVES. JUMP BACK TO FIRE TO START.

SC=1000:LEVEL=0:NL=3

'draw the background

x0=80
y0=40
color 1
radius = 39
exec diamond
radius = 5
exec diamond
'inner game loop

WHILE NL

pause 0
'move particle locations
poke 53248,x0+43+X(0) ' x position
move playerLoc,PM+$200+y0+11+Y(0),playerLen ' y position
for i=1 to 3
    'move particle locations
    poke 53248+i,x0+43+X(i) ' x position
    move partLoc,PM+$200+i*128+y0+11+Y(i),partLen ' y position
next i

'do collision detection
poke 53278,1 'clear collision register
PAUSE 1 'paint screen once
P0PF=PEEK(53252) 'check collision register
IF P0PF 'act on collision
ENDIF

for i=1 to 3
    'update particle locations
    X(i)=X(i) +SGN(Y(i)) + RAND(3)-1 -(X(i)/33)
    Y(i)=Y(i) -SGN(X(i)) + RAND(3)-1 -(Y(i)/33)
next i

'get joystick input
S=STICK(0)
LR=(S&4=4)-(S&8=8) ' make a +/-1 for left/right
UD=(S&1=1)-(S&2=2) ' make a +/-1 for up/down

X(0) = X(0) + LR+LR
Y(0) = Y(0) + UD+UD

WEND

'update outer game loop text
?,"SCORE:";SC
SOUND

proc diamond
    plot   x0-radius/2, y0+radius
    drawto x0+radius/2, y0+radius
    drawto x0+radius,   y0+radius/2
    drawto x0+radius,   y0-radius/2
    drawto x0+radius/2, y0-radius
    drawto x0-radius/2, y0-radius
    drawto x0-radius,   y0-radius/2
    drawto x0-radius,   y0+radius/2
    drawto x0-radius/2, y0+radius
endproc