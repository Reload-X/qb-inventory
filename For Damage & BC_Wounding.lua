For Damage & BC_Wounding

-- [CLIENT-SIDE | LUA] --

-- Revive Function from QB-Ambulancejob, Just add the exports.BC_Wounding:ResetAll()
RegisterNetEvent('hospital:client:Revive', function()
    local player = PlayerPedId()
    exports.BC_Wounding:ResetAll()

    if isDead or InLaststand then
        local pos = GetEntityCoords(player, true)
        NetworkResurrectLocalPlayer(pos.x, pos.y, pos.z, GetEntityHeading(player), true, false)
        isDead = false
        SetEntityInvincible(player, false)
        SetLaststand(false)
    end

    if isInHospitalBed then
        loadAnimDict(inBedDict)
        TaskPlayAnim(player, inBedDict , inBedAnim, 8.0, 1.0, -1, 1, 0, 0, 0, 0 )
        SetEntityInvincible(player, true)
        canLeaveBed = true
    end

    TriggerServerEvent("hospital:server:RestoreWeaponDamage")
    SetEntityMaxHealth(player, 200)
    SetEntityHealth(player, 200)
    ClearPedBloodDamage(player)
    SetPlayerSprint(PlayerId(), true)
    ResetAll()
    ResetPedMovementClipset(player, 0.0)
    TriggerServerEvent('hud:server:RelieveStress', 100)
    TriggerServerEvent("hospital:server:SetDeathStatus", false)
    TriggerServerEvent("hospital:server:SetLaststandStatus", false)
    emsNotified = false
    QBCore.Functions.Notify(Lang:t('info.healthy'))

    local dict = "anim@scripted@heist@ig25_beach@male@"
    RequestAnimDict(dict)
    repeat Wait(0) until HasAnimDictLoaded(dict)


    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(PlayerPedId())
    local playerHead = GetEntityHeading(PlayerPedId())

    local scene = NetworkCreateSynchronisedScene(playerPos.x, playerPos.y, playerPos.z - 1, 0.0, 0.0, playerHead, 2, false, false, 8.0, 1000.0, 1.0)
    NetworkAddPedToSynchronisedScene(PlayerPedId(), scene, dict, "action", 1000.0, 8.0, 0, 0, 1000.0, 8192)
    NetworkAddSynchronisedSceneCamera(scene, dict, "action_camera")
    
    NetworkStartSynchronisedScene(scene)
end)

-- Bandage Item in QB-Ambulance, Just Change it In wasabi's version for the Bandage Item to use exports.BC_Wounding:ResetAll()
RegisterNetEvent('hospital:client:UseBandage', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.bandage'), 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
		anim = "weed_inspecting_high_base_inspector",
		flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        TriggerServerEvent("hospital:server:removeBandage")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "remove")
        SetEntityHealth(ped, GetEntityHealth(ped) + 10)

        -- BC Wounding
        exports.BC_Wounding:ResetAll()

        if math.random(1, 100) < 50 then
            RemoveBleed(1)
        end
        if math.random(1, 100) < 7 then
            ResetPartial()
        end
        
    end, function() -- Cancel
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)