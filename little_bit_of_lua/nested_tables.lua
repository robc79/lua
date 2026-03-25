-- Nested tables.

local students = {}
local alice_info = { Email = "alice@home.com", Phone = "555-4321" }
students["Alice"] = alice_info

io.write("Alice's phone number is " .. students["Alice"]["Phone"] .. "\n")

-- Nested tables and looping.

local students = {
  Alice = {
    Email = "alice@home.com",
    Phone = "555-4321",
    Address = {
      Number = 100,
      Street = "Fake st.",
      City = "Big Apple"
    }
  },
  Bob = {
    Email = "bob@work.com",
    Phone = "555-1234",
    Address = {
      Number = 200,
      Street = "Real Ave.",
      City = "Windy City"
    }
  }
}

for student, contact_details in pairs(students) do
  io.write(student .. ":\n")
  for key, value in pairs(contact_details["Address"]) do
    io.write("\t" .. key .. ": " .. value .. "\n")
  end
end
