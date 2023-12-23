function excavate2() {
    local args = {...}
    if args ~= 2 then
        print("Usage: excavate2 <lenght> <depth>")
        print("Length will be doubled")
        print("Put turtle in the lower left corner at your hole start")
        error()
    end

    diam = args[1]
    dept = args[2]

    turtle.refuel(64)

    function digForwardRight(length)
        for x=1,length*2 do
            turtle.dig()
            turtle.forward()
        end
        turtle.turnRight()
        turtle.dig()
        turtle.forward()
        turtle.turnRight()
    end

    function digForwardLeft(length)
        for x=1,length*2 do
            turtle.dig()
            turtle.forward()
        end
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
    end

    for i=1,dept do
        turtle.digDown()
        turtle.down()
        for y=1,diam-1 do
            digForwardRight(diam - 1)
            digForwardLeft(diam - 1)
        end
        digForwardRight(diam-1)
        for x=1,(diam-1)*2 do
            turtle.dig()
            turtle.forward()
        end
        turtle.turnRight()
        for x=1,(diam-1)*2 do
            turtle.forward()
        end
        turtle.turnRight()
    end

    for i=1,dept do
        turtle.up()
    end
}

function chopper(){
    
}
