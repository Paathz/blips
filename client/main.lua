Citizen.CreateThread(function()
  for _, info in pairs(Config.Blips) do
      local blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
      SetBlipSprite(blip, info.id)
      SetBlipScale(blip, info.scale)
      SetBlipColour(blip, info.colour)
      SetBlipAsShortRange(blip, true)
      BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(blip)
  end
end)