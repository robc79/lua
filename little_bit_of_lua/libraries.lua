-- Concatenating two lists.

local names = { "Alice", "Bob", "Carol" }
local concatenated_names = table.concat(names, ", ")
io.write(concatenated_names .. "\n")


-- Length of a string.

local message = "Hello, world!"
local length = string.len(message)
io.write(message .. " is " .. length .. " characters long.\n")



-- Sorting a list.

local numbers = { 100, 1, 10, 11 }
table.sort(numbers)

for _, v in ipairs(numbers) do
  io.write(v .. ", ")
end

io.write("\n")
