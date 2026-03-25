-- Functions.

local student_grades = {
  Alice = { 95, 87, 72 },
  Bob = { 67, 54, 72 }
}

for name, grades in pairs(student_grades) do
  io.write(name .. ":\n")
  for _, grade in ipairs(grades) do
    io.write("\t" .. grade .. "\n")
  end
end

student_grades["Carol"] = { 42, 57, 38 }

for name, grades in pairs(student_grades) do
  io.write(name .. ":\n")
  for _, grade in ipairs(grades) do
    io.write("\t" .. grade .. "\n")
  end
end

local function show_grades(student_grades)
  -- Function to print out a list of grades for each student.
  for name, grades in pairs(student_grades) do
    io.write(name .. ":\n")
    for _, grade in ipairs(grades) do
      io.write("\t" .. grade .. "\n")
    end
  end  
end

show_grades(student_grades)
student_grades["Carol"] = { 42, 57, 38 }
show_grades(student_grades)
