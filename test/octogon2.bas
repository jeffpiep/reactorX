g.7
c.1
radius=10
x0=80
y0=40



    plot   x0-radius/2, y0+radius
    drawto x0+radius/2, y0+radius
    drawto x0+radius,   y0+radius/2
    drawto x0+radius,   y0-radius/2
    drawto x0+radius/2, y0-radius
    drawto x0-radius/2, y0-radius
    drawto x0-radius,   y0-radius/2
    drawto x0-radius,   y0+radius/2
    drawto x0-radius/2, y0+radius

data D() WORD = -1,1,2,2,1,-1,-2,-2,-1,1,2
plot x0-radius,y0+2*radius
for i=1 to 8
    drawto x0+D(i)*radius,y0+D(i+2)*radius
    ?D(i);" ";D(i+2),
next i

do
loop
