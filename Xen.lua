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
    	local lplr = game.Players.LocalPlayer
	local cam = game:GetService("Workspace").CurrentCamera
	local uis = game:GetService("UserInputService")
	local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
	local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
	local getremote = function(tab)
		for i,v in pairs(tab) do
			if v == "Client" then
				return tab[i + 1]
			end
		end
		return ""
	end
	local repstorage = game:GetService("ReplicatedStorage")
	local cstore = require(lplr.PlayerScripts.TS.ui.store).ClientStore
	local bedwars = { -- this is litterally the only part of the script that isnt mine :/
		["DropItemRemote"] = getremote(debug.getconstants(getmetatable(KnitClient.Controllers.ItemDropController).dropItemInHand)),
		["SprintController"] = KnitClient.Controllers.SprintController,
		["CombatConstant"] = require(repstorage.TS.combat["combat-constant"]).CombatConstant,
		["ClientHandlerStore"] = require(lplr.PlayerScripts.TS.ui.store).ClientStore,
		["KnockbackUtil"] = require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil,
		["PingController"] = require(lplr.PlayerScripts.TS.controllers.game.ping["ping-controller"]).PingController,
		["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
		["SwordController"] = KnitClient.Controllers.SwordController,
		["ClientHandler"] = Client,
		["AppController"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out.client.controllers["app-controller"]).AppController,
		["SwordRemote"] = getremote(debug.getconstants((KnitClient.Controllers.SwordController).attackEntity)),
	}

	function checkMagnitude(target)
		return (target.Character.PrimaryPart.Position - lplr.Character.PrimaryPart.Position).Magnitude
	end
	function hashFunc(instance) 
		return {value = instance}
	end
	local function GetInventory(plr)
		if not plr then
			return {inv = {}, armor = {}}
		end

		local success, result = pcall(function()
			return require(game:GetService("ReplicatedStorage").TS.inventory["inventory-util"]).InventoryUtil.getInventory(plr)
		end)

		if not success then
			return {items = {}, armor = {}}
		end

		if plr.Character and plr.Character:FindFirstChild("InventoryFolder") then
			local invFolder = plr.Character:FindFirstChild("InventoryFolder").Value
			if not invFolder then return result end

			for c, item in pairs(result) do
				for x, subItem in pairs(item) do
					if typeof(subItem) == "table" and subItem.itemType then
						subItem.instance = invFolder:FindFirstChild(subItem.itemType)
					end
				end

				if typeof(item) == "table" and item.itemType then
					item.instance = invFolder:FindFirstChild(item.itemType)
				end
			end
		end

		return result
	end
	local BedwarsSwords = require(game:GetService("ReplicatedStorage").TS.games.bedwars["bedwars-swords"]).BedwarsSwords
	local function getSword()
		local highestPower = -9e9
		local returningItem = nil

		local inventory = GetInventory(lplr)

		for _, item in pairs(inventory.items) do
			local power = table.Cosmic Clientfind(BedwarsSwords, item.itemType)
			if not power then
				continue
			end
			if power > highestPower then
				returningItem = item
				highestPower = power
			end
		end
		return returningItem
	end
	local Distance = {["Value"] = 30}
	function getbeds()
		local beds = {}
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if string.lower(v.Name) == "bed" and v:FindFirstChild("Covers") ~= nil and v:FindFirstChild("Covers").Color ~= lplr.Team.TeamColor then
				table.insert(beds,v)
			end
		end
		return beds
	end
	function isalive(plr)
		plr = plr or lplr
		if not plr.Character then return false end
		if not plr.Character:FindFirstChild("Head") then return false end
		if not plr.Character:FindFirstChild("Humanoid") then return false end
		return true
	end
	function getserverpos(Position)
		local x = math.round(Position.X/3)
		local y = math.round(Position.Y/3)
		local z = math.round(Position.Z/3)
		return Vector3.new(x,y,z)
	end

	local button = script.Parent
	local lplr = game.Players.LocalPlayer
	local Enabled
	button.MouseButton1Down:Connect(function()
		if button.BackgroundColor3 == Color3.fromRGB(255,255,255) then
			button.BackgroundColor3 = Color3.fromRGB(255, 149, 0)
			Enabled = true
			repeat
				task.wait(0.1)
				if isalive(lplr) and lplr.Character:FindFirstChild("Humanoid").Health > 0.1 then
					local beds = getbeds()
					for i,v in pairs(beds) do
						local mag = (v.Position - lplr.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
						if mag < Distance["Value"] then
							game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
								["blockRef"] = {
									["blockPosition"] = getserverpos(v.Position)
								},
								["hitPosition"] = getserverpos(v.Position),
								["hitNormal"] = getserverpos(v.Position)
							})
						end
					end
				end
	
end)
Tab2:Button("Yellow Soda Exploit",function()
    print("uhhh")
end)
Tab2:Button("Anti Void",function() 
    print("e")
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
