RegisterNetEvent('nns_debug:client:coords')
AddEventHandler('nns_debug:client:coords', function (lang, isGround)
    local playerPed = PlayerPedId()
    local x,y,z = table.unpack(GetEntityCoords(playerPed))

    if lang == nil then
        lang = "lua"
    end

    local z = ('%.2f'):format(z)
    if isGround and (isGround == "1" or isGround == "true") then
        z = ('%.2f'):format(z - 0.95)
    end

    SendNUIMessage({
        ["resource"] = "nns_debug",
        ["func"] = "coords",
        ["coords"] = {
            ["x"] = ('%.2f'):format(x),
            ["y"] = ('%.2f'):format(y),
            ["z"] = z
        },
        ["lang"] = lang,
        ["isGround"] = isGround
    })
end)

RegisterNetEvent('nns_debug:client:heading')
AddEventHandler('nns_debug:client:heading', function ()
    SendNUIMessage({
        ["resource"] = "nns_debug",
        ["func"] = "heading",
        ["heading"] = GetEntityHeading(PlayerPedId())
    })
end)

RegisterNetEvent('nns_debug:client:rot')
AddEventHandler('nns_debug:client:rot', function (lang)
    local x,y,z = table.unpack(GetGameplayCamRot(0))

    if lang == nil then
        lang = "lua"
    end

    SendNUIMessage({
        ["resource"] = "nns_debug",
        ["func"] = "rotation",
        ["rotation"] = {
            ["x"] = ('%.2f'):format(x),
            ["y"] = ('%.2f'):format(y),
            ["z"] = ('%.2f'):format(z - 0.95)
        },
        ["lang"] = lang
    })
end)
