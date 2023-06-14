local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/InRotationX/Burger/main/burger%20whopper.lua"))()

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
 local ag = RaycastParams.new();
	ag.IgnoreWater = true;
	function NukerFunction(ah)
		local ai = game:GetService("Workspace"):Raycast(ah.Position + Vector3.new(0, 24, 0), Vector3.new(0, -27, 0), ag);
		if ai then
			local aj = ai.Instance;
			for p, q in pairs(aj:GetChildren()) do
				if q:IsA("Texture") then
					q:Destroy();
				end
			end
			aj.Color = Color3.fromRGB(102, 0, 255);
			aj.Material = Enum.Material.Neon;
			game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({blockRef={blockPosition=Vector3.new(math.round(aj.Position.X / 3), math.round(aj.Position.Y / 3), math.round(aj.Position.Z / 3))},hitPosition=Vector3.new(math.round(aj.Position.X / 3), math.round(aj.Position.Y / 3), math.round(aj.Position.Z / 3)),hitNormal=Vector3.new(math.round(aj.Position.X / 3), math.round(aj.Position.Y / 3), math.round(aj.Position.Z / 3))});
		end
	end
	local aa = {Value=30};
	local ak = t;
	if ak then
		spawn(function()
			while task.wait(0.1) do
				if not ak then
					return;
				end
				spawn(function()
					if (h:GetAttribute("DenyBlockBreak") == true) then
						h:SetAttribute("DenyBlockBreak", nil);
					end
				end);
				if isAlive(h) then
					local u = getbeds();
					for p, q in pairs(u) do
						local D = (q.Position - h.Character.PrimaryPart.Position).Magnitude;
						if (D < aa.Value) then
							NukerFunction(q);
						end
					end
				end
			end
		end);
	end
end)
Tab2:Button("Fly (F TO TOGGLE)",function()
 print("e")
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
