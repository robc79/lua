-- Procedural implementation of rock, paper, scissors game.

local function player_pick()
    local choice = ""

    while choice ~= 'r' and choice ~= 'p' and choice ~= 's' do
        io.write("Pick: ")
        choice = io.read()
    end

    return choice
end

local function cpu_pick(history)
    local choice = 0

    local rock = 1
    local paper = 2
    local scissors = 3

    if #history == 0 then
        choice = math.random(rock, scissors)
    else
        local idx = math.random(1, #history)
        local opponents_choice = history[idx][1]

        local choice_map = {
            r = paper,
            p = scissors,
            s = rock
        }

        choice = choice_map[opponents_choice]
    end

    return choice
end

local function determine_outcome(player_choice, cpu_choice)
    local outcome = ""

    if player_choice == cpu_choice then
        outcome = "Draw!"
    elseif player_choice == 's' and cpu_choice == 'p' then
        outcome = "Player wins!"
    elseif player_choice == 'r' and cpu_choice == 's' then
        outcome = "Player wins!"
    elseif player_choice == 'p' and cpu_choice == 'r' then
        outcome = "Player wins!"
    else
        outcome = "CPU wins!"
    end

    return outcome
end

local function play_round(history)
    local player_choice = player_pick()
    local choice_map = { 'r', 'p', 's' }
    local cpu_choice = choice_map[cpu_pick(history)]
    history[#history+1] = { player_choice, cpu_choice }
    io.write(player_choice, " - ", cpu_choice, "\n")
    io.write(determine_outcome(player_choice, cpu_choice), "\n")
end

local function play_game(rounds)
    rounds = rounds or 5
    io.write("Player vs CPU\n")
    local history = {}

    for i=1, rounds do
        play_round(history)
    end

    io.write("Bye!")
end

-- Main entry point
math.randomseed(os.time())
local rounds = 5

if #arg == 1 then
    local number = tonumber(arg[1])
    if number ~= nil then rounds = number end
end

play_game(rounds)
