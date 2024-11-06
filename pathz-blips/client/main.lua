local blips = {
  { title = "LSPD", colour = 29, id = 60, scale = 0.8, x = 590.1337, y = -2.6963, z = 59.62 }, -- Add as many blips as you want!
  --{ title = "Ambulance", colour = 3, id = 20, scale = 1.0, x = 590.1337, y = -2.6963, z = 59.62 }, 
}



------------------ DO NOT TOUCH ------------------
Citizen.CreateThread(function()
  for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, info.scale)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
  end
end)
------------------ DO NOT TOUCH ----------------
