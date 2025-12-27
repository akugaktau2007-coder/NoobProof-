local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StarterGui = game:GetService("StarterGui")

local pName = LocalPlayer.Name

local scriptsLibrary = {
    ["Polaria"] = 'require(110951620907921):Pload("'..pName..'")',
    ["HappyHub ss"] = 'require(110047253067635):Hload("'..pName..'")',
    ["c00lgui"] = 'require(133464960745567).woawsoc00l("'..pName..'")',
    ["Goner"] = 'require(4513235536).G("'..pName..'")',
    ["Guest1337"] = 'require(81657562726106).Guest1337("'..pName..'")',
    ["The future"] = 'require(7089500700).load("'..pName..'")',
    ["Immortality lord"] = 'require(6534274227)("'..pName..'")',
    ["Grab Gun"] = 'require(5146659840).Dark_Eccentric("Dark_Eccentric", "'..pName..'")',
    ["Void prince"] = 'require(5448300595).load("'..pName..'")',
    ["Banzai Bazooka"] = 'require(4941303393).banzai("'..pName..'")',
    ["Viankos"] = 'require(6123029966).vian("'..pName..'")',
    ["Anonymous particles"] = [[for i, v in pairs(game.Players:GetChildren()) do
    local emit = Instance.new("ParticleEmitter")
    if v.Character and v.Character:FindFirstChild("Torso") then
        emit.Parent = v.Character.Torso
        emit.Texture = "http://www.roblox.com/asset/?id=127476787"
        emit.VelocitySpread = 50
    end
end]],
    ["c00lkidd message"] = [[local msg = Instance.new("Message")
msg.Text = "c00lkidd: HAHAHA NOOBS I'M BACK"
msg.Parent = workspace
wait(3)
msg.Text = "DIE NOOBS"
wait(2)
for _, plr in pairs(game.Players:GetPlayers()) do
	if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
		local ex = Instance.new("Explosion")
		ex.Position = plr.Character.HumanoidRootPart.Position
		ex.BlastRadius = 50
		ex.BlastPressure = 500000
		ex.Parent = workspace
	end
end
msg:Destroy()]],
    ["c00lexploit2025 message"] = [[local hint = Instance.new("Hint")
hint.Parent = game.Workspace
hint.Text = "c00lexploit2025"
local msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = "c00lexploit2025 was here"
task.wait(5)
hint:Destroy()
msg:Destroy()]],
    ["c00lkidd decal"] = [[local ID = 131650302510999
local Skybox = true
local particle = true
local function applyDecals(part)
    local faces = {"Front", "Back", "Top", "Bottom", "Left", "Right"}
    for _, face in pairs(faces) do
        local decal = Instance.new("Decal")
        decal.Texture = "http://www.roblox.com/asset/?id=" .. ID
        decal.Face = face
        decal.Parent = part
    end
end
local function applyParticle(part)
    local p = Instance.new("ParticleEmitter")
    p.Texture = "http://www.roblox.com/asset/?id=" .. ID
    p.Rate = 100
    p.Parent = part
end
for _, obj in pairs(game.Workspace:GetDescendants()) do
    if obj:IsA("BasePart") then
        applyDecals(obj)
        if particle then
            applyParticle(obj)
        end
    end
end
if Skybox then
    for _, oldSky in pairs(game.Lighting:GetChildren()) do
        if oldSky:IsA("Sky") then
            oldSky:Destroy()
        end
    end
    local sky = Instance.new("Sky")
    sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
    sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
    sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
    sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
    sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
    sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID
    sky.Parent = game.Lighting
end]]
}

local function sendNotification(title, message)
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = title,
            Text = message,
            Duration = 5
        })
    end)
end

local function scanForBackdoors()
    local backdoors = {}
    for _, obj in pairs(ReplicatedStorage:GetDescendants()) do
        if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
            table.insert(backdoors, obj)
        end
    end
    return backdoors
end

local function loadNoobProof()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "NoobProof_GUI"
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = PlayerGui

    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.new(0, 580, 0, 320)
    MainFrame.Position = UDim2.new(0.5, -290, 0.5, -160)
    MainFrame.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
    MainFrame.BorderSizePixel = 1
    MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui

    local TitleBar = Instance.new("Frame")
    TitleBar.Size = UDim2.new(1, 0, 0, 25)
    TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    TitleBar.BorderSizePixel = 0
    TitleBar.Parent = MainFrame

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Size = UDim2.new(1, -10, 1, 0)
    TitleLabel.Position = UDim2.new(0, 10, 0, 0)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Text = "NoobProof"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.Font = Enum.Font.SourceSans
    TitleLabel.TextSize = 16
    TitleLabel.Parent = TitleBar

    local TabBar = Instance.new("Frame")
    TabBar.Size = UDim2.new(1, 0, 0, 25)
    TabBar.Position = UDim2.new(0, 0, 0, 25)
    TabBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabBar.BorderSizePixel = 1
    TabBar.BorderColor3 = Color3.fromRGB(200, 200, 200)
    TabBar.Parent = MainFrame

    local TabLabel = Instance.new("TextLabel")
    TabLabel.Size = UDim2.new(0, 150, 1, 0)
    TabLabel.Position = UDim2.new(0, 5, 0, 0)
    TabLabel.Text = "Executor     Settings"
    TabLabel.Font = Enum.Font.SourceSans
    TabLabel.TextSize = 14
    TabLabel.BackgroundTransparency = 1
    TabLabel.TextXAlignment = Enum.TextXAlignment.Left
    TabLabel.Parent = TabBar

    local CodeBox = Instance.new("TextBox")
    CodeBox.Size = UDim2.new(0, 380, 0, 180)
    CodeBox.Position = UDim2.new(0, 5, 0, 55)
    CodeBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CodeBox.BorderColor3 = Color3.fromRGB(180, 180, 180)
    CodeBox.Text = "" 
    CodeBox.PlaceholderText = ""
    CodeBox.MultiLine = true
    CodeBox.TextWrapped = true
    CodeBox.TextYAlignment = Enum.TextYAlignment.Top
    CodeBox.TextXAlignment = Enum.TextXAlignment.Left
    CodeBox.Font = Enum.Font.Code
    CodeBox.TextSize = 14
    CodeBox.ClearTextOnFocus = false
    CodeBox.Parent = MainFrame

    local LogBox = Instance.new("TextLabel")
    LogBox.Size = UDim2.new(0, 380, 0, 50)
    LogBox.Position = UDim2.new(0, 5, 0, 240)
    LogBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LogBox.BorderColor3 = Color3.fromRGB(180, 180, 180)
    LogBox.Text = " Ready."
    LogBox.TextXAlignment = Enum.TextXAlignment.Left
    LogBox.TextYAlignment = Enum.TextYAlignment.Top
    LogBox.Font = Enum.Font.SourceSans
    LogBox.TextSize = 14
    LogBox.Parent = MainFrame

    local LibFrame = Instance.new("ScrollingFrame")
    LibFrame.Size = UDim2.new(0, 180, 0, 235)
    LibFrame.Position = UDim2.new(0, 395, 0, 55)
    LibFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LibFrame.BorderColor3 = Color3.fromRGB(180, 180, 180)
    LibFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    LibFrame.ScrollBarThickness = 4
    LibFrame.Parent = MainFrame

    local UIList = Instance.new("UIListLayout")
    UIList.Padding = UDim.new(0, 2)
    UIList.Parent = LibFrame
    UIList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
        LibFrame.CanvasSize = UDim2.new(0, 0, 0, UIList.AbsoluteContentSize.Y)
    end)

    for name, content in pairs(scriptsLibrary) do
        local sBtn = Instance.new("TextButton")
        sBtn.Size = UDim2.new(1, 0, 0, 25)
        sBtn.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
        sBtn.BorderSizePixel = 0
        sBtn.Text = " " .. name
        sBtn.Font = Enum.Font.SourceSans
        sBtn.TextSize = 14
        sBtn.TextXAlignment = Enum.TextXAlignment.Left
        sBtn.Parent = LibFrame
        
        sBtn.MouseButton1Click:Connect(function()
            CodeBox.Text = content
            LogBox.Text = " Loaded: " .. name
        end)
    end

    local function createCtrlBtn(name, pos)
        local btn = Instance.new("TextButton")
        btn.Size = UDim2.new(0, 85, 0, 25)
        btn.Position = pos
        btn.Text = name
        btn.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
        btn.BorderColor3 = Color3.fromRGB(150, 150, 150)
        btn.Font = Enum.Font.SourceSans
        btn.TextSize = 14
        btn.Parent = MainFrame
        return btn
    end

    local ExecBtn = createCtrlBtn("Execute", UDim2.new(0, 5, 0, 290))
    local ClearBtn = createCtrlBtn("Clear", UDim2.new(0, 95, 0, 290))
    local InjectBtn = createCtrlBtn("Inject", UDim2.new(0, 185, 0, 290))
    local ResetBtn = createCtrlBtn("Reset", UDim2.new(0, 275, 0, 290))

    ExecBtn.MouseButton1Click:Connect(function()
        local code = CodeBox.Text
        local func, err = loadstring(code)
        if func then
            pcall(func)
            LogBox.Text = " Done Executing."
            local bds = scanForBackdoors()
            for _, bd in pairs(bds) do
                pcall(function()
                    if bd:IsA("RemoteEvent") then bd:FireServer(code)
                    elseif bd:IsA("RemoteFunction") then bd:InvokeServer(code) end
                end)
            end
        else
            LogBox.Text = " Error: " .. tostring(err)
        end
    end)

    ClearBtn.MouseButton1Click:Connect(function()
        CodeBox.Text = ""
        LogBox.Text = " Editor Cleared."
    end)

    ResetBtn.MouseButton1Click:Connect(function()
        if LocalPlayer.Character then LocalPlayer.Character:BreakJoints() end
    end)

    InjectBtn.MouseButton1Click:Connect(function()
        local bds = scanForBackdoors()
        if #bds > 0 then
            LogBox.Text = " Injected: " .. #bds .. " backdoors found."
            sendNotification("NoobProof", "Injected Successfully!")
        else
            LogBox.Text = " Failed: No backdoor found."
        end
    end)
end

loadNoobProof()
