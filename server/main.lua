local loaded = {}

RegisterNetEvent('LoadClient', function()
    local s = source
    if not loaded[s] then
        loaded[s] = true
        TriggerClientEvent('LoadClient', s, LoadResourceFile(GetCurrentResourceName(), 'clientcode/main.lua'))
    else
        DropPlayer(s, 'Client Code Reload')
    end
end)