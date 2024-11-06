local blips = {

  { title = "LSPD",          colour = 29, id = 60, scale = 0.8, x = 590.1337, y = -2.6963, z = 59.62 },
  { title = "Autohändler",   colour = 61, id = 820, scale = 0.8, x = -2267.6062, y = 377.4393, z = 114.88 },
  { title = "Mechaniker",    colour = 39, id = 402, scale = 1.0, x = -2317.1177, y = 353.6253, z = 114.88 },
  { title = "Amani Sushi", colour = 48, id = 835, scale = 0.8, x = -163.3206, y = 303.4500, z = 105.8994 },
  { title = "Club77", colour = 46, id = 93, scale = 0.8, x = 193.4594, y = -3167.5044, z = 5.8171 },
  { title = "Street Customs", colour = 5, id = 402, scale = 1.0, x = 733.7014, y = -1086.8096, z = 22.1690 },

}

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

