-- Lists of values.

local names = { "Alice", "Bob", "Carol" }

io.write(names[1] .. "\n")
io.write(names[2] .. "\n")
io.write(names[3] .. "\n")

io.write("\n")

io.write(type(names) .. "\n")
io.write(type(names[1]) .. "\n")


-- Adding a name.

local names = { "Alice", "Bob", "Carol" }

table.insert(names, "Dave")

io.write(names[1] .. "\n")
io.write(names[2] .. "\n")
io.write(names[3] .. "\n")
io.write(names[4] .. "\n")

-- Looping over a list.

local names = { "Alice", "Bob", "Carol" }

for _,v in ipairs(names) do
  io.write(v .. "\n")
end

-- Size of a list.
local names = { "Alice", "Bob", "Carol" }

io.write("Names is " .. #names .. " values long.\n")


-- Removing values from a list.

local names = { "Alice", "Bob", "Carol", "Dave" }

for _,v in ipairs(names) do
  io.write(v .. ", ")
end

io.write("\n")

table.remove(names, 2)

for _,v in ipairs(names) do
  io.write(v .. ", ")
end

io.write("\n")

-- Looping over a list backwards.

local names = { "Alice", "Bob", "Carol" }

for i = #names, 1, -1 do
  io.write(names[i] .. "\n")
end
