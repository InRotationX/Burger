local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/Copy-SynapOver.lua"))()

local GUI = library:new("Xen Client","Version V1.0")
local Tab1 = GUI:Tap("Utility")
local Tab2 = GUI:Tap("Blantant")
local Tab3 = GUI:Tap("Render")
local Tab4 = GUI:Tap("Animations")
local Tab5 = GUI:Tap("ESP Stuff")
local Tab6 = GUI:Tap("Combat")
local Tab7 = GUI:Tap("Credits")


Tab1:Button("Staff Detector",function()
    print("uhhh")
end)
Tab1:Button("Staff Detector V2",function()
    print("Coming soon")
end)
Tab1:Button("Anti Knockback",function()
    print("uhhh")
end)
Tab2:Button("Infinite Jump",function()
    		local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Xen Client";
    Text = "Infinite Jump Enabled."; -- what the text says (ofc)
    Duration = 30;
})
end)
Tab2:Button("Kill Aura",function()
    print("uhhh")
end)
Tab2:Button("Bed Nuker",function()
    print("uhhh")
end)
Tab2:Button("Yellow Soda Exploit",function()
    print("uhhh")
end)
Tab2:Button("Anti Void",function()
    print("uhhh")
end)
Tab3:Button("Chat Spammer",function()
    print("uhhh")
end)
Tab4:Button("Toy Animation",function()
    local Animate =
 
game.Players.LocalPlayer.Character.Animate
 
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
 
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
 
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345"
 
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708"
 
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020"
 
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869"
 
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423"
end)
Tab4:Button("Astronaut Animation",function()
    print("uhhh")
end)
Tab4:Button("OldSchool Animation",function()
    print("uhhh")
end)
Tab4:Button("Cartoony Animation",function()
    print("uhhh")
end)
Tab4:Button("More Coming soon",function()
    print("uhhh")
end)
Tab5:Button("ElderTree Orb ESP",function()
    _G.Keybind = "P"

loadstring(game:HttpGet("https://raw.githubusercontent.com/mlartix/Roblox-Bedwars/main/ElderTreeOrbESP.lua", true))()
end)
Tab5:Button("Crit Star ESP",function()
    print("uhhh")
end)
Tab5:Button("Health Star ESP",function()
    print("uhhh")
end)
Tab5:Button("Player ESP",function()
    print("uhhh")
end)
Tab6:Button("Aimbot (Crossbow Only for now)",function()
    print("uhhh")
end)