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
data x() WORD = 0,10,0,-10
data y() WORD = -20,20,20,20

dim colsnX(4)
dim colsnY(4)
data alive() BYTE = 1,1,1,1
numkilled = 0
numlives = 5

data particle() BYTE = 0,0,0,0,0,6,11,15,6,0,0,0,0,0
partLoc = adr(particle)
partLen = 14 'length of particle array
data player() BYTE = 0,0,0,0,8,8,28,127,28,8,8,0,0,0,0
playerLoc = adr(player)
playerLen = 15

graphics 7 'use 4 color 160x80 mode
poke 752,1 'turn off cursor in text window

'note PM COORDINATES offset by 43,11
'set up PM mode
PM=$A000 'empty memory made above
dpoke 704,$440F
dpoke 706,$4444
dpoke 709,$404F

poke 54279,PM/256 '             Tell ANTIC where PM RAM is
poke 53277,3 '                     Enable PM display
poke 559,46 '                    Enable PM DMA with 2-line res

'set up some outer-loop game logic
'5 LIVES
'FIRE TO START

score=0

'draw the background

x0=80
y0=40
color 1
radius = 39
exec octogon

?:?,"press FIRE to start";
WHILE STRIG(0):WEND
CLS
?:? "LIVES: ";numlives,"SCORE: ";

rate = 15
counter = rate-1



WHILE numkilled < 3 AND numlives > 0
    alive(0) = 1 
    inc counter
    se.1,counter,15
    if counter MOD rate = 0
        color 2
        radius = counter/rate
        exec octogon
    endif

    pause 0 ' sync with VB
    'move particle locations
    poke 53248,x0+44+X(0) ' x position
    move playerLoc,PM+$200+y0+9+Y(0),playerLen ' y position
    for i=1 to 3
        'move particle locations
        poke 53248+i,x0+43+X(i) ' x position
        move partLoc,PM+$200+i*128+y0+9+Y(i),partLen ' y position
    next i

    'do collision detection
    poke 53278,1 'clear collision register
    PAUSE 1 'paint screen once
    for i=0 to 3
        colsnX(i) = 0
        colsnY(i) = 0
        ' check for playfield collisions
        PiPF = peek(53252+i)
        if PiPF&1 = 1
            alive(i) = 0 ' set flag
            freq = 200
            if i = 0
                X(i) = 0 
                Y(i) = -20 ' put at starting position 
                dec numlives
                mset PM+$200,128,0 ' clear player from screen
                POKE 657,9
                ? numlives;
                exit ' and we're done
            else
                X(i) = -43-x0 ' remove from screen
                inc numkilled ' increase kill count
            endif
            ' option: when kill count is high enough - you win or go to next level
        elif PiPF&2 = 2
            freq = 100
            colsnX(i) = colsnX(i) + 2*SGN(X(i))
            colsnY(i) = colsnY(i) + 2*SGN(Y(i))
        endif
        ' check for player collisions
        PiPj = peek(53260+i)
        if PiPj > 0 
            if PiPj&1 = 1
                freq = 30
                j = 0
                score=score+5
            elif PiPj&2 = 2
                j = 1
            elif PiPj&4 = 4
                j = 2
            elif PiPj&8 = 8
                j = 3
            endif 
            'if i>0 then 
            exec bounce
        endif
    next i

    if freq>0 
        sound 0,freq,10,15
    else    
        sound
    endif
    freq = 0

    for i=1 to 3
        if alive(i) 
            'update particle locations 
        '    X(i)=X(i) + SGN(Y(i)) + colsnX(i) + RAND(3)-1 -(X(i)/32)
        '    Y(i)=Y(i) - SGN(X(i)) + colsnY(i) + RAND(3)-1 -(Y(i)/32)
            X(i)=X(i) - SGN((X(i)-X(0))/10) + colsnX(i) + RAND(3)-1 -(X(i)/33)
            Y(i)=Y(i) - SGN((Y(i)-Y(0))/10) + colsnY(i) + RAND(3)-1 -(Y(i)/33)
        endif
    next i

    'get joystick input and move player
    S=STICK(0)
    LR=(S&4=4)-(S&8=8) ' make a +/-1 for left/right
    UD=(S&1=1)-(S&2=2) ' make a +/-1 for up/down
    Y(0) = Y(0) + colsnY(0) + UD+UD
    X(0) = X(0) + colsnX(0) + LR+LR

    POKE 657,19
    ? score;

WEND

'update outer game loop text
SOUND

if numkilled=3 and alive(0)
    ?;" you win!";
else
    ?;" meltdown";
endif

do 
loop

proc bounce
    colsnX(i) = colsnX(i) + 2*SGN(X(i)-X(j))
    colsnY(i) = colsnY(i) + 2*SGN(Y(i)-Y(j))
endproc

proc octogon
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