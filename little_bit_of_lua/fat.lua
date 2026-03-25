-- Functions and tables.

local circle = {}
local rectangle = {}

function circle.area(radius)
  return math.pi * (radius ^ 2)
end

function circle.perimeter(radius)
  return 2 * math.pi * radius
end

function rectangle.area(length, width)
  return length * width
end

function rectangle.perimeter(length, width)
  return (length * 2) + (width * 2)
end

io.write("Area of a circle with radius 2.5 is " .. circle.area(2.5) .. "\n")
io.write("Area of a rectangle with dimensions 4 x 3 is " .. rectangle.area(4, 3) .. "\n")
io.write("Perimeter of a rectangle with dimensions 4 x 3 is " .. rectangle.perimeter(4, 3) .. "\n")



local function big_func(params_table)
  io.write(params_table.param1)
end

big_func{param1 = "hi there", param2 = "red"}
