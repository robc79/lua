-- More with tables.

local students = { Alice = "alice@work.com", Bob = "bob@home.com", Carol = "carol@cafe.com" }

for k, v in pairs(students) do
  io.write("Key " .. k .. " has email address " .. v .. "\n")
end

io.write("\n")
students["Alice"] = "alice@home.com"

for k, v in pairs(students) do
  io.write("Key " .. k .. " has email address " .. v .. "\n")
end

io.write("\n")
students["Dave"] = "dave@school.com"

for k, v in pairs(students) do
  io.write("Key " .. k .. " has email address " .. v .. "\n")
end

io.write("\n")
