QBCore = exports['qb-core']:GetCoreObject()
QBCore.Functions.CreateUseableItem("random_cash", function(source)
    print("Random Cash item used by: "..source)  -- This line is for debugging
    local Player = QBCore.Functions.GetPlayer(source)
    local cashAmount = math.random(100, 500) -- Adjust min and max values as needed

    -- Add money to the player's cash
    Player.Functions.AddMoney('cash', cashAmount)
    TriggerClientEvent('QBCore:Notify', source, 'You found $' .. cashAmount .. ' in the envelope!', 'success')

    -- Remove the item from the player's inventory
    Player.Functions.RemoveItem('random_cash', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['random_cash'], "remove")
end)
