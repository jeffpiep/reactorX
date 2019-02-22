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
' D is an array used to draw the octogon
' x and y are the player/missle positions referenced to center of screem
' index 0 is player and 1-3 are particles
data D() WORD = -1,1,2,2,1,-1,-2,-2,-1,1,2
data x() WORD = 0,10,0,-10,0          ' initial X positions
data y() WORD = -20,20,20,20,0        ' initial Y positions
'array that stores alive/dead state of PM's

'these are the changes in position due to collisions
dim alive(4),colsnX(4),colsnY(4)

'some counters
numkilled = 0
numlives = 5
score=0
rate = 15
counter = rate-1

'set up graphics mode
graphics 7 'use 4 color 160x80 mode
poke 752,1 'turn off cursor in text window
'set up PM mode
PM=$A000 'empty memory?
mset $a000,1024,0 'clear out the ram
poke 54279,PM/256 '             Tell ANTIC where PM RAM is
poke 53277,3 '                     Enable PM display
poke 559,46 '                    Enable PM DMA with 2-line res

'set colors 
dpoke 704,$440F ' players 0 and 1
dpoke 706,$4444 ' players 2 and 3
dpoke 709,$404F ' text window

'draw the background
x0=80 ' center of screen
y0=40
color 1 ' pick a color
radius = 19 ' full screen radius
exec octogon

?"Push FIRE"
WHILE STRIG(0):WEND
CLS

WHILE numkilled < 3 AND numlives > 0
    alive(0) = 0 
    inc counter 'this counter controls the core
    se.1,counter,15 'rotate pretty colors
    if counter MOD rate = 0
        color 2
        radius = counter/rate
        exec octogon ' make the core bigger
    endif

    'move player location
    poke 53248,x0+44+X(0) ' x position
    move adr("     -stuff-     ")+1,PM+$200+y0+9+Y(0),17 ' y position
    'move particle locations
    for i=1 to 3
        move adr("     ball     ")+1,PM+$200+i*128+y0+9+Y(i),14 ' y position
        poke 53248+i,(x0+43+X(i))*(alive(i)=0) ' x position
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
            'someone hit the wall!
            alive(i) = 1 ' set flag
            freq = 200 ' play a low tone
            if i = 0
                'it was the player
                X(i) = 0 
                Y(i) = -2*radius ' put player back near core 
                dec numlives ' take away a life
                mset PM+$200,128,0 ' clear player from screen
                exit ' and we're done
            else
                X(i) = -43-x0 ' remove particle from screen
                inc numkilled ' increase kill count
            endif
            ' option: when kill count is high enough - you win or go to next level
        elif PiPF&2 = 2
            freq = 80 ' play mid tone
            ' make PM bounce off core
            j=5
            exec bounce
        endif
        ' check for player collisions
        PiPj = peek(53260+i)
        if PiPj > 0 
            ' i value is subject player
            ' j value is player that was hit
            if PiPj&1 = 1
                freq = 40 ' high pitch
                j = 0
                score=score+5 ' get some points
            elif PiPj&2 = 2
                j = 1
            elif PiPj&4 = 4
                j = 2
            elif PiPj&8 = 8
                j = 3
            endif 
            exec bounce ' compute bounce position change
        endif
    next i

    if freq>0 
        sound 0,freq,10,15
    else    
        sound
    endif
    freq = 0

    for i=1 to 3
        'if alive(i)=0
            'update particle locations 
            ' they are attracted to the player
            ' and do a little random walk
            ' and stay away from the walls
            X(i)=X(i) - SGN((X(i)-X(0))/10) + colsnX(i) + RAND(3)-1 -(X(i)/33)
            Y(i)=Y(i) - SGN((Y(i)-Y(0))/10) + colsnY(i) + RAND(3)-1 -(Y(i)/33)
        'endif
    next i

    'scoreboard
    P.657,2
    ? score, numlives;
    'get joystick input and move player
    S=STICK(0)
    LR=(S&4=4)-(S&8=8) ' make a +/-1 for left/right
    UD=(S&1=1)-(S&2=2) ' make a +/-1 for up/down
    Y(0) = Y(0) + colsnY(0) + UD+UD
    X(0) = X(0) + colsnX(0) + LR+LR

WEND

SOUND ' stop sound
' figure outcome
if numkilled=3 and alive(0)=0
    ?;"You Win!";
else
    ?;"/MELTDOWN\";
endif

do 
loop ' wait forever

proc bounce
    colsnX(i) = colsnX(i) + 2*SGN(X(i)-X(j))
    colsnY(i) = colsnY(i) + 2*SGN(Y(i)-Y(j))
endproc

proc octogon
    plot x0-radius, y0+2*radius
    for p = 1 to 8
        drawto x0+D(p)*radius,y0+D(p+2)*radius
    next p
endproc

