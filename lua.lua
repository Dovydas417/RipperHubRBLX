-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false

-- Create the Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 687, 0, 337)
frame.Position = UDim2.new(0.252, 0, 0.279, 0)
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BackgroundTransparency = 0.2
frame.Parent = screenGui

-- Create the Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 50, 0, 50)
minimizeButton.Position = UDim2.new(1, -120, 0, 10)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.new(1, 1, 0)
minimizeButton.BackgroundColor3 = Color3.new(0, 0, 0)
minimizeButton.BackgroundTransparency = 0.2
minimizeButton.Parent = frame

-- Create the Kill Button
local killButton = Instance.new("TextButton")
killButton.Size = UDim2.new(0, 50, 0, 50)
killButton.Position = UDim2.new(1, -60, 0, 10)
killButton.Text = "X"
killButton.TextColor3 = Color3.new(1, 0, 0)
killButton.BackgroundColor3 = Color3.new(0, 0, 0)
killButton.BackgroundTransparency = 0.2
killButton.Parent = frame

-- Create the Reopen Button
local reopenButton = Instance.new("TextButton")
reopenButton.Size = UDim2.new(0, 200, 0, 50)
reopenButton.Position = UDim2.new(0.405, 0, 0.917, 0)
reopenButton.Text = "Go back"
reopenButton.TextColor3 = Color3.new(1, 1, 1)
reopenButton.TextScaled = true
reopenButton.BackgroundColor3 = Color3.new(0, 0, 0)
reopenButton.BackgroundTransparency = 0.2
reopenButton.Visible = false
reopenButton.Parent = screenGui

-- Create the Sprint Button
local sprintButton = Instance.new("TextButton")
sprintButton.Size = UDim2.new(0, 182, 0, 43)
sprintButton.Position = UDim2.new(0.031, 0, 0.816, 0)
sprintButton.Text = "Sprint"
sprintButton.TextColor3 = Color3.new(1, 1, 1)
sprintButton.TextScaled = true
sprintButton.BackgroundColor3 = Color3.new(0, 0, 0)
sprintButton.BackgroundTransparency = 0.2
sprintButton.Parent = frame

-- Create the Krnl Remake Button
local remakeButton = Instance.new("TextButton")
remakeButton.Size = UDim2.new(0, 182, 0, 43)
remakeButton.Position = UDim2.new(0.031, 0, 0.404, 0)
remakeButton.Text = "Zombie merge script (op)"
remakeButton.TextColor3 = Color3.new(1, 1, 1)
remakeButton.TextScaled = true
remakeButton.BackgroundColor3 = Color3.new(0, 0, 0)
remakeButton.BackgroundTransparency = 0.2
remakeButton.Parent = frame

-- Create the MM2 Script Button
local mm2Button = Instance.new("TextButton")
mm2Button.Size = UDim2.new(0, 182, 0, 43)
mm2Button.Position = UDim2.new(0.031, 0, 0.608, 0)
mm2Button.Text = "Fly Gui V3"
mm2Button.TextColor3 = Color3.new(1, 1, 1)
mm2Button.TextScaled = true
mm2Button.BackgroundColor3 = Color3.new(0, 0, 0)
mm2Button.BackgroundTransparency = 0.2
mm2Button.Parent = frame

-- Create the Admin - IY Button
local adminButton = Instance.new("TextButton")
adminButton.Size = UDim2.new(0, 182, 0, 43)
adminButton.Position = UDim2.new(0.031, 0, 0.101, 0)
adminButton.Text = "Admin - IY"
adminButton.TextColor3 = Color3.new(1, 1, 1)
adminButton.TextScaled = true
adminButton.BackgroundColor3 = Color3.new(0, 0, 0)
adminButton.BackgroundTransparency = 0.2
adminButton.Parent = frame

-- Create the Arsenal Rage Cheat Button
local arsenalButton = Instance.new("TextButton")
arsenalButton.Size = UDim2.new(0, 182, 0, 43)
arsenalButton.Position = UDim2.new(0.33, 0, 0.813, 0)
arsenalButton.Text = "Rolve Fps games - Rage Cheat"
arsenalButton.TextColor3 = Color3.new(1, 1, 1)
arsenalButton.TextScaled = true
arsenalButton.BackgroundColor3 = Color3.new(0, 0, 0)
arsenalButton.BackgroundTransparency = 0.2
arsenalButton.Parent = frame

-- Create the Owl Hub Button
local owlHubButton = Instance.new("TextButton")
owlHubButton.Size = UDim2.new(0, 182, 0, 43)
owlHubButton.Position = UDim2.new(0.33, 0, 0.608, 0)
owlHubButton.Text = "Owl Hub"
owlHubButton.TextColor3 = Color3.new(1, 1, 1)
owlHubButton.TextScaled = true
owlHubButton.BackgroundColor3 = Color3.new(0, 0, 0)
owlHubButton.BackgroundTransparency = 0.2
owlHubButton.Parent = frame

-- Create the TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 200, 0, 50)
textLabel.Position = UDim2.new(0.354, 0, 0.021, 0)
textLabel.Text = "RipperHub |☠️⚰"
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.BackgroundTransparency = 1
textLabel.Parent = frame

-- Function to make the frame draggable only at the top
local dragging = false
local dragInput, mousePos, framePos

minimizeButton.MouseButton1Click:Connect(function()
    frame.Visible = false
    reopenButton.Visible = true
end)

reopenButton.MouseButton1Click:Connect(function()
    frame.Visible = true
    reopenButton.Visible = false
end)

killButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

sprintButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    if player.Character then
        local humanoid = player.Character:FindFirstChild("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = 32
        end
    end
    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.WalkSpeed = 32
    end)
end)

remakeButton.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Saaakai/Random-Roblox-Script/main/Zombie%20Merge%20Tycoon"))()
end)

mm2Button.MouseButton1Click:Connect(function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)

adminButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

arsenalButton.MouseButton1Click:Connect(function()
    -- Arsenal Rage Cheat Script
    local RS = game:GetService("ReplicatedStorage")
    print("START")
    function changeThis(g,n,v)
        if g:FindFirstChild(n) ~= nil and g:FindFirstChild(n):IsA("ValueBase") then
            g[n].Value = v
        else
            warn(g.Name..' does not have a value for "'..n..'"')
        end
    end
    for i,g in pairs(RS.Weapons:GetChildren()) do
        if g ~= nil then
            changeThis(g,"FireRate",0.00011)
            changeThis(g,"Auto",true)
            changeThis(g,"RecoilControl",0)
            changeThis(g,"Ammo",999)
            changeThis(g,"Speed%",-1000)
        end
    end

    -- Set Player's Health to 999
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.MaxHealth = 999
    humanoid.Health = 999
    
    -- Spin and Look Down Script
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local head = character:WaitForChild("Head")
    local neck = head:WaitForChild("Neck")

    local spinSpeed = 1080 -- Degrees per second

    -- Spin the character for the local player
    game:GetService("RunService").RenderStepped:Connect(function(deltaTime)
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(spinSpeed * deltaTime), 0)
    end)

    -- Make the character look down for other players and hide the head
    game:GetService("RunService").Stepped:Connect(function()
        if neck then
            neck.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-90), 0, 0)
        end

        if head then
            head.Transparency = 1  -- Makes the head invisible
            head.CanCollide = false  -- Ensures the head doesn’t interfere with physics
            for _, child in pairs(head:GetChildren()) do
                if child:IsA("Decal") or child:IsA("Mesh") then
                    child:Destroy()  -- Remove any accessories or faces on the head
                end
            end
        end
    end)
end)

owlHubButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
end)

-- Dragging functionality for the frame (Top part of the frame only)
local dragBar = textLabel -- Assign this to the top part where dragging should be allowed

dragBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

dragBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - mousePos
        frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
    end
end)
