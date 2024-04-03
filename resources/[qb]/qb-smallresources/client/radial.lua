exports('myMenuHandler', function(menu, item)
    print(menu, item)
 
    if menu == 'police_menu' and item == 1 then
        print('Handcuffs')
    end
end)
 
lib.registerRadial({
  id = 'police_menu',
  items = {
    {
      label = 'Handcuff',
      icon = 'handcuffs',
      onSelect = 'myMenuHandler'
    },
    {
      label = 'Frisk',
      icon = 'hand'
    },
    {
      label = 'Fingerprint',
      icon = 'fingerprint'
    },
    {
      label = 'Jail',
      icon = 'bus'
    },
    {
      label = 'Search',
      icon = 'magnifying-glass',
      onSelect = function()
        print('Search')
      end
    }
  }
})
 
lib.addRadialItem({
  {
    id = 'police',
    label = 'Police',
    icon = 'shield-halved',
    menu = 'police_menu'
  },
  {
    id = 'business_stuff',
    label = 'Business',
    icon = 'briefcase',
    onSelect = function()
      print("Business")
    end
  }
})
 
local coords = GetEntityCoords(cache.ped)
local point = lib.points.new(coords, 5)
 
function point:onEnter()
  lib.addRadialItem({
    id = 'garage_access',
    icon = 'warehouse',
    label = 'Garage',
    onSelect = function()
      print('Garage')
    end
  })
end
 
function point:onExit()
  lib.removeRadialItem('garage_access')
end