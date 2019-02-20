DA.x()W.=0,10,0,-10
DA.y()W.=-20,20,20,20
DA.a()B.=1,1,1,1
DI.U(4),V(4)
K=0
L=5
S=0
T=15
C=T-1
DA.E()B.=0,0,0,0,0,6,11,15,6,0,0,0,0,0
DA.P()B.=0,0,0,0,8,8,28,127,28,8,8,0,0,0,0
GR.7
P.752,1
B=$A000 'empty memory?
MS.B,1024,0 'clear out the ram
P.54279,$a0 '             Tell ANTIC where B RAM is
P.53277,3 '                     Enable B display
P.559,46 '                    Enable B DMA with 2-line res

'set colors 
D.704,$440F ' players 0 and 1
D.706,$4444 ' players 2 and 3
D.709,$404F ' text window

'draw the background
Q=80 ' center of screen
w=40
C.1 ' pick a color
R = 39 ' full screen radius
exe.O

'scoreboard
?:?,"press FIRE to start";
W.STRIG(0):WE.
CLS
?:? "LIVES: ";L,"SCORE: ";

W.K<3AND L>0
    a(0) = 1 
    incC 'this C controls the core
    se.1,C,15 'rotate pretty colors
    if C MOD T = 0
        C.2
        R = C/T
        exe.O ' make the core bigger
    endif

    pause 0 ' sync with VB
    'move P location
    P. 53248,Q+44+X(0) ' x position
    move adr(P),B+$200+w+9+Y(0),15 ' y position
    'move E locations
    for i=1 to 3
        P. 53248+i,Q+43+X(i) ' x position
        move adr(E),B+$200+i*128+w+9+Y(i),14 ' y position
    next i

    'do collision detection
    P. 53278,1 'clear collision register
    PAUSE 1 'paint screen once
    for i=0 to 3
        U(i) = 0
        V(i) = 0
        ' check for playfield collisions
        M = peek(53252+i)
        if M&1 = 1
            'someone hit the wall!
            a(i) = 0 ' set flag
            F = 200 ' play a low tone
            if i = 0
                'it was the P
                X(i) = 0 
                Y(i) = -R-5 ' put P back near core 
                dec L ' take away a life
                mset B+$200,128,0 ' clear P from screen
                P. 657,9: ? L; ' update scoreboard
                exit ' and we're done
            else
                X(i) = -43-Q ' remove E from screen
                inc K ' increase kill count
            endif
            ' option: when kill count is high enough - you win or go to next level
        elif M&2 = 2
            F = 100 ' play mid tone
            ' make B bounce off core
            U(i) = U(i) + 2*SGN(X(i))
            V(i) = V(i) + 2*SGN(Y(i))
        endif
        ' check for P collisions
        N = peek(53260+i)
        if N > 0 
            ' i value is subject P
            ' j value is P that was hit
            if N&1 = 1
                F = 30 ' high pitch
                j = 0
                S=S+5 ' get some points
            elif N&2 = 2
                j = 1
            elif N&4 = 4
                j = 2
            elif N&8 = 8
                j = 3
            endif 
            ' compute bounce position change
            U(i) = U(i) + 2*SGN(X(i)-X(j))
            V(i) = V(i) + 2*SGN(Y(i)-Y(j)) 
        endif
    next i

    if F>0 
        sound 0,F,10,15
    else    
        sound
    endif
    F = 0

    for i=1 to 3
        if a(i) 
            'update E locations 
            ' they are attracted to the P
            ' and do a little random walk
            ' and stay away from the walls
            X(i)=X(i) - SGN((X(i)-X(0))/10) + U(i) + RAND(3)-1 -(X(i)/33)
            Y(i)=Y(i) - SGN((Y(i)-Y(0))/10) + V(i) + RAND(3)-1 -(Y(i)/33)
        endif
    next i

    'get joystick input and move P
    G=STICK(0)
    Y(0) = Y(0) + V(0) + 2*((G&1=1)-(G&2=2))
    X(0) = X(0) + U(0) + 2*((G&4=4)-(G&8=8))

    P. 657,19 : ? S; ' update the scoreboard
WEND

SOUND ' stop sound
' figure outcome
if K=3 and a(0)
    ?;" you win!";
else
    ?;" meltdown";
endif

do 
loop ' wait forever


pro.O
    plot   Q-R/2, w+R
    drawto Q+R/2, w+R
    drawto Q+R,   w+R/2
    drawto Q+R,   w-R/2
    drawto Q+R/2, w-R
    drawto Q-R/2, w-R
    drawto Q-R,   w-R/2
    drawto Q-R,   w+R/2
    drawto Q-R/2, w+R
endp.