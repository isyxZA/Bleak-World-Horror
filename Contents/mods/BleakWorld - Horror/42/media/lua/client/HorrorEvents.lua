local modID = "HorrorWorld"
local searchMode = nil
local playerSearchMode = nil
local dawnHour = 6
local duskHour = 18


local function getPlayerSearchMode()
	local playerNum = getPlayer():getPlayerNum()
	searchMode = getSearchMode()
	
	if searchMode ~= nil then
		playerSearchMode = searchMode:getSearchModeForPlayer(playerNum)
	end
end


function initFog()
	local playerdata = ModData.create(modID)
	playerdata.newGame = true
    playerdata.fogIntensity = 0.0
	playerdata.fogIntensityTarget = 0.0
	playerdata.fogIntensityRatio = 0.0
end


local function updateOutlines(isoZombie)
	if isoZombie:isInvisible() then return end
	
	if isoZombie:distToNearestCamCharacter() < 2.0 and isoZombie:getAlpha() > 0.5 then 
		isoZombie:setOutlineHighlight(true)
	end
end


local function OnWeaponHitCharacter(wielder, character, handWeapon, damage)
	if character:isZombie() then
		character:setOutlineHighlight(false)
	end
end


local function updateFogLevel()
	if not ModData.exists(modID) then
		initFog()
	end

	local playerdata = ModData.get(modID)
	local hour = getGameTime():getHour()
	

	if hour == dawnHour then
		if SandboxVars.HorrorWorld.DayFogChance == 100 then
			playerdata.fogIntensityTarget = SandboxVars.HorrorWorld.DayFogLevel
		elseif SandboxVars.HorrorWorld.DayFogChance == 0 then
			playerdata.fogIntensityTarget = 0.0
		else
			local random = ZombRand(1, 99)
			if SandboxVars.HorrorWorld.DayFogChance >= random then
				playerdata.fogIntensityTarget = SandboxVars.HorrorWorld.DayFogLevel
			else
				playerdata.fogIntensityTarget = 0.0
			end
		end
		playerdata.fogIntensityRatio = math.max(0.1, SandboxVars.HorrorWorld.DayFogLevel * 0.2)
		--print("Dawn Active")
	elseif hour == duskHour then
		if SandboxVars.HorrorWorld.NightFogChance == 100 then
			playerdata.fogIntensityTarget = SandboxVars.HorrorWorld.NightFogLevel
		elseif SandboxVars.HorrorWorld.NightFogChance == 0 then
			playerdata.fogIntensityTarget = 0.0
		else
			local random = ZombRand(1, 99)
			if SandboxVars.HorrorWorld.NightFogChance >= random then
				playerdata.fogIntensityTarget = SandboxVars.HorrorWorld.NightFogLevel
			else
				playerdata.fogIntensityTarget = 0.0
			end
		end
		playerdata.fogIntensityRatio = math.max(0.1, SandboxVars.HorrorWorld.NightFogLevel * 0.2)
		--print("Dusk Active")
	end
	
	if playerdata.fogIntensity ~= playerdata.fogIntensityTarget then 
		if playerdata.fogIntensityTarget < playerdata.fogIntensity then
			playerdata.fogIntensity = (playerdata.fogIntensity - playerdata.fogIntensityRatio)
			if playerdata.fogIntensity < playerdata.fogIntensityTarget then
				playerdata.fogIntensity = playerdata.fogIntensityTarget
			end
		else
			playerdata.fogIntensity = (playerdata.fogIntensity + playerdata.fogIntensityRatio)
			if playerdata.fogIntensity > playerdata.fogIntensityTarget then
				playerdata.fogIntensity = playerdata.fogIntensityTarget
			end
		end
		
		if playerdata.fogIntensity > 1.0 then
			playerdata.fogIntensity = 1.0
		elseif playerdata.fogIntensity < 0.0 then
			playerdata.fogIntensity = 0.0
		end
		
		updateFog()
	end
end


function updateFog()
	if isMultiplayer() then return end
	
	if not ModData.exists(modID) then
		initFog()
	end
	
	local climateManager = getClimateManager()
	local fogManager = climateManager:getClimateFloat(5)
	local windManager = climateManager:getClimateFloat(6)
	
	local playerdata = ModData.get(modID)
	
	if playerdata.newGame == true then
		playerdata.newGame = false
		local hour = getGameTime():getHour()
		if (hour >= dawnHour) and (hour < duskHour) then
			playerdata.fogIntensityTarget = SandboxVars.HorrorWorld.DayFogLevel
			playerdata.fogIntensity = SandboxVars.HorrorWorld.DayFogLevel
		else
			playerdata.fogIntensityTarget = SandboxVars.HorrorWorld.NightFogLevel
			playerdata.fogIntensity = SandboxVars.HorrorWorld.NightFogLevel
		end
	end
	
	fogManager:setEnableModded(true)
	fogManager:setModdedValue(playerdata.fogIntensity)
	fogManager:setModdedInterpolate(1.0)
	
	local windLevel = ZombRandFloat(0.0, 0.3)
	windManager:setEnableModded(true)
	windManager:setModdedValue(windLevel)
	windManager:setModdedInterpolate(1.0)
	
	--print("Fog Target: " .. tostring(playerdata.fogIntensityTarget))
	--print("Fog Current: " .. tostring(playerdata.fogIntensity))
end


local function setBlurOverlay(player)
	local playerNum = player:getPlayerNum()
	
	if searchMode == nil then
		getPlayerSearchMode()
	else
		searchMode:setEnabled(playerNum, true)

		local radius = playerSearchMode:getRadius()
		local blur = playerSearchMode:getBlur()
		local gradient = playerSearchMode:getGradientWidth()
		local dark = playerSearchMode:getDarkness()
		
		radius:setTargetExterior(SandboxVars.HorrorWorld.VisionRadius)
		radius:setTargetInterior(SandboxVars.HorrorWorld.VisionRadius)
		
		blur:setExterior(SandboxVars.HorrorWorld.VisionBlur)
		blur:setInterior(SandboxVars.HorrorWorld.VisionBlur)
		
		gradient:setExterior(12)
		gradient:setInterior(12)
		
		dark:setExterior(SandboxVars.HorrorWorld.DarknessLevel)
		dark:setInterior(SandboxVars.HorrorWorld.DarknessLevel)
	end
end


local function EveryTenMinutes()
	local random = ZombRand(0, 100)

	if random > 90 then
		local chance = ZombRand(0, 100)
		local doStrike = false
		local doLightning = false
		local doRumble = false
		
		if chance < 25  then
			doRumble = true
			--print("Rumble Active!")
		elseif chance < 75 then
			doLightning = true
			doRumble = true
			--print("Lightning Active!")
			--print("Rumble Active!")
		else
			doStrike = true
			--print("Strike Active!")
		end
		
		local player = getPlayer()
		local xPos = math.floor(player:getX())
		local yPos = math.floor(player:getY())
		local thunderManager = getClimateManager():getThunderStorm()
		thunderManager:triggerThunderEvent(xPos, yPos, doStrike, doLightning, doRumble)
	end
end


Events.EveryTenMinutes.Add(EveryTenMinutes)

Events.OnNewGame.Add(initFog)
Events.OnGameStart.Add(updateFog)

Events.OnCreatePlayer.Add(getPlayerSearchMode)
Events.OnPlayerUpdate.Add(setBlurOverlay)
Events.OnWeaponHitCharacter.Add(OnWeaponHitCharacter)

Events.OnZombieUpdate.Add(updateOutlines)

Events.EveryHours.Add(updateFogLevel)
