local json = require "dkjson"
local http = require "socket.http"

local url = "http://api.open-notify.org/astros.json"
local response = http.request(url)
local astros = json.decode(response)

if astros.message ~= "success" then
    io.write("<!> Error fetching data.\n")
    os.exit(1)
end

local craft = {}

for _, v in ipairs(astros.people) do
    if craft[v.craft] == nil then craft[v.craft] = {} end
    local people = craft[v.craft]
    people[#people + 1] = v.name
end

for name, people in pairs(craft) do
    io.write(name, " => ")
    for _, person in ipairs(people) do
        io.write(person, ", ")
    end
    io.write("\n")
end