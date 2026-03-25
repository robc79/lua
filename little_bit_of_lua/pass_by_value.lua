-- Pass by value.

local num = 10

local function add2(num)
  io.write("Adding 2 to " .. num .. ".\n")
  num = num + 2
  io.write("Num is " .. num .. " inside the function.\n")
end

io.write("Num is " .. num .. " before calling the function.\n")
add2(num)
io.write("Num is " .. num .. " after calling the function.\n")
