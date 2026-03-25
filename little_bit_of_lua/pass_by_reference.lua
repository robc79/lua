-- Pass by reference.

local students = { "Alice", "Bob", "Carol" }

local function edit_table(students)
  -- Add, edit, and remove students.
  table.insert(students, "Dave")
  table.remove(students, 2)
  students[1] = "Eve"
end

io.write(table.concat(students, ", ") .. "\n")
edit_table(students)
io.write(table.concat(students, ", ") .. "\n")

local grades = { 97, 43, 56, 72 }

local function reassign_grades(grades)
  grades = { 10, 32, 9, 70 }
end

io.write(table.concat(grades, ", ") .. "\n")
reassign_grades(grades)
io.write(table.concat(grades, ", ") .. "\n")
