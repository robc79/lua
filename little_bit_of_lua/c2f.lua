-- Celsius to Fahrenheit converter.

io.write("Enter temperature in Celsius: ")
local raw_input = io.read()
local celsius = tonumber(raw_input)
local fahrenheit = (celsius * 9 / 5) + 32
io.write("The temperature in Fahrenheit is " .. fahrenheit .. "\n")
