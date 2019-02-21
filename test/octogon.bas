g.7
c.1
radius=10
x0=80
y0=40
    deg
    plot x0+int(radius*cos(22.5)),y0+int(radius*sin(22.5))
'    drawto x0+radius/2, y0+radius
'    drawto x0+radius,   y0+radius/2
'    drawto x0+radius,   y0-radius/2
'    drawto x0+radius/2, y0-radius
'    drawto x0-radius/2, y0-radius
'    drawto x0-radius,   y0-radius/2
'    drawto x0-radius,   y0+radius/2
'    drawto x0-radius/2, y0+radius
    for D = 1 to 8
        drawto x0+int(radius*cos(D*45+22.5)),y0+int(radius*sin(D*45+22.5))
    next D
do
loop
