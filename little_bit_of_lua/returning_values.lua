-- Returning values.

local first_name = "Alice"
local last_name = "Johnson"

local function to_full_name(first, last)
  return first .. " " .. last
end

local full_name = to_full_name(first_name, last_name)
io.write(full_name .. "\n")
io.write(to_full_name(first_name, last_name) .. "\n")
