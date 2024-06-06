local ESX = exports["es_extended"]:getSharedObject()

function CheckGTX480()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == 'shitgpu' then
                return false
            end
        end
    end
    return true
end



function CheckGTX1050()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == '1050gpu' then
                return false
            end
        end
    end
    return true
end



function CheckGTX1060()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == '1060gpu' then
                return false
            end
        end
    end
    return true
end


function CheckGTX1080()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == '1080gpu' then
                return false
            end
        end
    end
    return true
end



function CheckRTX2080()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == '2080gpu' then
                return false
            end
        end
    end
    return true
end



function CheckRTX3060()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == '3060gpu' then
                return false
            end
        end
    end
    return true
end



function CheckRTX4090()
    local xPlayer = ESX.GetPlayerData()
    if xPlayer and xPlayer.inventory then
        for k,v in pairs(xPlayer.inventory) do
            if v.name == '4090gpu' then
                return false
            end
        end
    end
    return true
end


RegisterNetEvent('razed-cryptomining:client:useGTX480', function()
    local success = nil
    local gpu = 'shitgpu'
    local notif1 = {
        title = 'Installing Graphics Card',
        description = 'Please wait 15 seconds for the graphics card to be installed.',
        duration = '500',
        type = 'success'
    }
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
        if success then
            ExecuteCommand("e mechanic")
            lib.progressBar({
                duration = 15000,
                label = '',
                useWhileDead = false,
                canCancel = false,
                disable = {
                    car = true,
                    move = true
                },
            })
            TriggerEvent("ox_lib:notify", notif2)
            TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
            ExecuteCommand("e c")
        else
            TriggerEvent("ox_lib:notify", notif3)
        end
    end)
end)


RegisterNetEvent('razed-cryptomining:client:useGTX1050', function()
    local gpu = '1050gpu'
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    if Config.UseAlphabetGame then
        minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
            if success then
                ExecuteCommand("e mechanic")
                lib.progressBar({
                    duration = 15000,
                    label = '',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true
                    },
                })
                TriggerEvent("ox_lib:notify", notif2)
                TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
                ExecuteCommand("e c")
            else
                TriggerEvent("ox_lib:notify", notif3)
            end
        end)
    else
        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'})
    end
end)


RegisterNetEvent('razed-cryptomining:client:useGTX1060', function()
    local gpu = '1060gpu'
    local success = nil
    local notif1 = {
        title = 'Installing Graphics Card',
        description = 'Please wait 15 seconds for the graphics card to be installed.',
        duration = '500',
        type = 'success'
    }
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    if Config.UseAlphabetGame then
        minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
            if success then
                ExecuteCommand("e mechanic")
                lib.progressBar({
                    duration = 15000,
                    label = '',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true
                    },
                })
                TriggerEvent("ox_lib:notify", notif2)
                TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
                ExecuteCommand("e c")
            else
                TriggerEvent("ox_lib:notify", notif3)
            end
        end)
    else
        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'})
    end
end)

RegisterNetEvent('razed-cryptomining:client:useGTX1080', function()
    local gpu = '1080gpu'
    local success = nil
    local notif1 = {
        title = 'Installing Graphics Card',
        description = 'Please wait 15 seconds for the graphics card to be installed.',
        duration = '500',
        type = 'success'
    }
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    if Config.UseAlphabetGame then
        minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
            if success then
                ExecuteCommand("e mechanic")
                lib.progressBar({
                    duration = 15000,
                    label = '',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true
                    },
                })
                TriggerEvent("ox_lib:notify", notif2)
                TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
                ExecuteCommand("e c")
            else
                TriggerEvent("ox_lib:notify", notif3)
            end
        end)
    else
        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'})
    end
end)

RegisterNetEvent('razed-cryptomining:client:useRTX2080', function()
    local gpu = '2080gpu'
    local success = nil
    local notif1 = {
        title = 'Installing Graphics Card',
        description = 'Please wait 15 seconds for the graphics card to be installed.',
        duration = '500',
        type = 'success'
    }
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    if Config.UseAlphabetGame then
        minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
            if success then
                ExecuteCommand("e mechanic")
                lib.progressBar({
                    duration = 15000,
                    label = '',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true
                    },
                })
                TriggerEvent("ox_lib:notify", notif2)
                TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
                ExecuteCommand("e c")
            else
                TriggerEvent("ox_lib:notify", notif3)
            end
        end)
    else
        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'})
    end
end)

RegisterNetEvent('razed-cryptomining:client:useRTX3060', function()
    local gpu = '3060gpu'
    local success = nil
    local notif1 = {
        title = 'Installing Graphics Card',
        description = 'Please wait 15 seconds for the graphics card to be installed.',
        duration = '500',
        type = 'success'
    }
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    if Config.UseAlphabetGame then
        minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
            if success then
                ExecuteCommand("e mechanic")
                lib.progressBar({
                    duration = 15000,
                    label = '',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true
                    },
                })
                TriggerEvent("ox_lib:notify", notif2)
                TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
                ExecuteCommand("e c")
            else
                TriggerEvent("ox_lib:notify", notif3)
            end
        end)
    else
        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'})
    end
end)

RegisterNetEvent('razed-cryptomining:client:useRTX4090', function()
    local gpu = '4090gpu'
    local success = nil
    local notif1 = {
        title = 'Installing Graphics Card',
        description = 'Please wait 15 seconds for the graphics card to be installed.',
        duration = '500',
        type = 'success'
    }
    local notif2 = {
        title = 'Successfully Installed Graphics Card!',
        description = 'Enjoy mining those cryptos!',
        duration = '500',
        type = 'success'
    }
    local notif3 = {
        title = 'Error',
        description = 'Something bad happened! Oh no!',
        duration = '500',
        type = 'error'
    }

    if Config.UseAlphabetGame then
        minigame = exports['skillchecks']:startAlphabetGame(10000, 12, function(success)
            if success then
                ExecuteCommand("e mechanic")
                lib.progressBar({
                    duration = 15000,
                    label = '',
                    useWhileDead = false,
                    canCancel = false,
                    disable = {
                        car = true,
                        move = true
                    },
                })
                TriggerEvent("ox_lib:notify", notif2)
                TriggerServerEvent('razed-cryptomining:server:sendGPUDatabase', gpu)
                ExecuteCommand("e c")
            else
                TriggerEvent("ox_lib:notify", notif3)
            end
        end)
    else
        local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'hard'}, {'w', 'a', 's', 'd'})
    end
end)
