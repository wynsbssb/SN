local OrionLib =loadstring(game:HttpGet("https://pastebin.com/raw/FUEx0f3G"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer


local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }


local Window = OrionLib:MakeWindow({Name = "SN脚本", HidePremium = false, SaveConfig = true,IntroText = "SN脚本", ConfigFolder = "SN脚本"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "SN脚本"; Text ="欢迎使用SN脚本"; Duration = 4; })



local about = Window:MakeTab({
    Name = "玩家信息",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false

})

about:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
about:AddParagraph("您的注入器:"," "..identifyexecutor().."")
about:AddParagraph("您当前服务器的ID"," "..game.GameId.."")


OrionLib:MakeNotification({
	Name = "SN脚本",
	Content = "欢迎使用雪脚本",
	Image = "rbxassetid://4483345998",
	Time = 2

})

local Tab = Window:MakeTab({

    Name = "通用",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

local Section = Tab:AddSection({

	Name = "各种功能"

})

Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})

Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})

Tab:AddTextbox({

	Name = "跳跃高度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end

})

Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end

})


Tab:AddToggle({

	Name = "夜视",

	Default = false,

	Callback = function(Value)

		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end

	end

})


Tab:AddButton({
	Name = "玩家进入提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})


Tab:AddButton({

	Name = "飞车",

	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/c3dcf58fa8cf7277.txt_2024-08-08_160648.OTed.lua"))()

  	end    

})


Tab:AddButton({
	Name = "阿尔宙斯自瞄",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()    
  	end    
})

Tab:AddButton({
	Name = "IY指令",
	Callback=function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end
})


Tab:AddButton({

	Name = "透视",

	Callback = function()

     loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()

  	end    

})



Tab:AddTextbox({

	Name = "跳跃高度",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end	 

})



Tab:AddButton({
	
Name = "通用ESP",	

Callback = function()	

loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()	

    end

})


Tab:AddButton({

    Name="紫砂",

    Callback=function()

        game.Players.LocalPlayer.Character.Humanoid.Health=0

    end
})



local Tab = Window:MakeTab({

    Name = "基础功能",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
    Name = "删除所有门",
    Callback = function()
        local tycoons = workspace:FindFirstChild("Tycoon")
        if not tycoons then return end
        tycoons = tycoons:FindFirstChild("Tycoons")
        if not tycoons then return end

        for _, tycoon in ipairs(tycoons:GetChildren()) do
            local purchasedObjects = tycoon:FindFirstChild("PurchasedObjects")
            if purchasedObjects then
                for _, obj in ipairs(purchasedObjects:GetChildren()) do
                    local lowerName = obj.Name:lower()
                    if lowerName:match("door") or lowerName:match("gate") then
                        obj:Destroy()
                    end
                end
            end
        end
    end
})


Tab:AddButton({
    Name = "交互按钮无CD",
    Callback = function()
        if not connection then
            connection = game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
                prompt.HoldDuration = 0
            end)
        end
    end
})

local Tab = Window:MakeTab({

    Name = "基地传送",

    Icon = "rbxassetid://4483345998",

    PremiumOnly = false

})

Tab:AddButton({
    Name = "Alpha",
    Callback = function()
        local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
        local location = CFrame.new(-446.5848693847656, 67.15837860107422, -4655.828125)
        local Humanoid = game.Players.LocalPlayer.Character.Humanoid
        Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        wait(0.2)
        pl.CFrame = location
    end
})
