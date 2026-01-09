-- Celsius to Fahrenheit converter #2.

local celsius = nil

while celsius == nil do
  io.write("Enter temperature in Celsius: ")
  local raw_input = io.read()
  celsius = tonumber(raw_input)
end

local fahrenheit = (celsius * 9 / 5) + 32
io.write("The temperature in Fahrenheit is " .. fahrenheit .. "\n")
