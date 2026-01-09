-- If statements and comparisons.

io.write("Enter your name: ")
local name = io.read()
name = string.upper(name)

if name == "ALICE" then
  io.write("Alice, good to see you again!\n")
elseif name == "BOB" then
  io.write("Bob! It's been a long time.\n")
else
  io.write("Hello " .. name .. "!\n")
end
