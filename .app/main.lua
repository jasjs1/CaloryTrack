local function logFood()

    io.write("Enter the food that you ate: ")
    local food = io.read()

    io.write("Quantity: ")
    local Quantity = io.read()

    io.write("Enter the amount of calories that that food had: ")
    local calories = io.read()

    -- calorieCount = calorieCount + tonumber(calories)

    print("To confrim this is what you inputted: ")
    print("")
    print("Food consumed: ".. food)
    print("Quantity of food: ".. Quantity)
    print("Total calories consumed: " .. calories)

    print("Save to confirm to create a text file.")

    local input = io.read()
    if input == "save" then
        local file = io.open("Food Log File.txt")
        file:write(food)
        file:write(Quantity)
        file:write(calorieCount)

        file:close()
        
        print("Food log created!")

    else 
        print("Error saving the food log file, please try again!")


    end
end


local function resetCalorieCount()

    local currentTime = os.date("*t")

    if currentTime.hour == 0 and currentTime.min == 0 and currentTime.sec == 0 then
        calorieCount = 0

    end
end

local function logWater()
    io.write("Beverage: ")
    local Beverage = io.read()

    io.write("How many ounces: ")
    local ounces = io.read()

    local input = io.read()

    if input == "save" then
        local file = io.open("Water log file.txt", "w")

        file:write(Beverage)
        file:write(ounces)

        file:close()

        print("Water log created!")
    else 
        print("Error saving the water log file please try again")
    end
end


local function logWorkout()
    io.write("Workout: ")
    local workout = io.read()

    io.write("Type of workout: ")
    local type = io.read()

    io.write("Duration of workout: ")
    local Duration = io.read()

    io.write("Total calories burnt: ")
    local burt = io.read()

    io.write("Total steps: ")
    local steps = io.read()

    print("Generating workout report...")
    os.execute("sleep 1.11555")

    local file = io.open("Workout_Report.txt", "w")

    file:write(type .. "\n")
    file:write(Duration .. "\n")
    file:write(burt .. "\n")
    file:write(steps .. "\n")

    file:close()

    print("File has been generated! Check the explorer on the left-hand side.")
    print("If you do not see the .txt file, there was an error that occured.")
end


while true do

    local input = io.read()

    if input == "food" then
        logFood()

    elseif input == "water" then
        logWater()

    elseif input == "workout" then
        logWorkout()

    elseif input == "" then
        -- funcName

    end
end