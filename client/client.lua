RegisterNetEvent('fnx-setPed')
AddEventHandler('fnx-setPed',function(ped)
    Citizen.Wait(2500)  
    local playerPed = PlayerPedId()
    local characterModel = GetHashKey(ped)
    RequestModel(characterModel)   
    Citizen.CreateThread(function()
        while not HasModelLoaded(characterModel) do
            RequestModel(characterModel)
            Citizen.Wait(0)
        end
        if IsModelInCdimage(characterModel) and IsModelValid(characterModel) then
            SetPlayerModel(PlayerId(), characterModel)
            SetPedDefaultComponentVariation(playerPed)
        end
        SetModelAsNoLongerNeeded(characterModel)
    end)
end)

RegisterNetEvent('fnx-setPed')
AddEventHandler('fnx-setPed',function(ped)
    Citizen.Wait(2500)  
    local playerPed = PlayerPedId()
    local characterModel = GetHashKey(ped)
    RequestModel(characterModel)   
    Citizen.CreateThread(function()
        while not HasModelLoaded(characterModel) do
            RequestModel(characterModel)
            Citizen.Wait(0)
        end
        if IsModelInCdimage(characterModel) and IsModelValid(characterModel) then
            SetPlayerModel(PlayerId(), characterModel)
            SetPedDefaultComponentVariation(playerPed)
        end
        SetModelAsNoLongerNeeded(characterModel)
    end)
end)

RegisterNetEvent('fnx-reset')
AddEventHandler('fnx-reset', function()
local pedm = 'mp_m_freemode_01'
local pedf = 'mp_f_freemode_01'
local hashm = GetHashKey(pedm)
local hashf = GetHashKey(pedf)
    TriggerEvent('skinchanger:getSkin', function(skin)
        if skin.sex == 0 then
            RequestModel(hashm)
            while not HasModelLoaded(hashm)
                do RequestModel(hashm)
                    Citizen.Wait(0)
            end
            SetPlayerModel(PlayerId(), hashm)
            TriggerEvent('skinchanger:loadClothes', skin)
        elseif skin.sex == 1 then
            RequestModel(hashf)
            while not HasModelLoaded(hashf)
                do RequestModel(hashf)
                    Citizen.Wait(0)
            end
            SetPlayerModel(PlayerId(), hashf)
            TriggerEvent('skinchanger:loadClothes', skin)
        end
    end)
end)
