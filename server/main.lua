RegisterCommand('c2c', function (source, args, raw)
    TriggerClientEvent('nns_debug:client:coords', source, args[1], args[2])
end, false)

RegisterCommand('h2c', function (source, args, raw)
    TriggerClientEvent('nns_debug:client:heading', source)
end, false)

RegisterCommand('rot2c', function (source, args, raw)
    TriggerClientEvent('nns_debug:client:rot', source, args[1])
end, false)
