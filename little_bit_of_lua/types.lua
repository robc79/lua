-- Variables and types

io.write(type("A") .. "\n")
io.write(type("A longer string") .. "\n")
io.write(type(10) .. "\n")
io.write(type(10.0) .. "\n")
io.write(type(true) .. "\n")
io.write(type(false) .. "\n")
io.write(type(nil) .. "\n")
io.write(type(io.write) .. "\n")
io.write(type(io) .. "\n")

local variable = "a string"
io.write(type(variable) .. "\n")
variable = 100
io.write(type(variable) .. "\n")
variable = false
io.write(type(variable) .. "\n")
