Config = {}

Framework = "QBCore"
if Framework == "QBCore" then
    Config.CoreName = "qb-core" -- your core name
    FWork = exports[Config.CoreName]:GetCoreObject()
end

--Player
Config.MaxInventoryWeight = 120000 -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 40 -- Max inventory slots for a player


-- --KEYBINDS
Config.KeyBinds = {
    Inventory = 'TAB',
    HotBar = 'Z'
}

--Target/Drop System
Config.CleanupDropTime = 15 * 60 -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5 -- The distance in GTA Units that a drop can be seen
Config.ItemDropObject = `sf_prop_sf_backpack_01a` -- if Config.UseItemDrop = true, this will be the prop that spawns for the item //  if its false it will be a marker
Config.Waittime = 0 -- Time to open inventory 2000 = 2 seconds
Config.Print = true 
Config.OrApartment = false

--Floor Drops/Vending
Config.UseItemDrop = true -- This will enable item object to spawn on drops instead of markers // if its false it will be a marker

Config.CustomTarget = 'qb-target' -- only works if Config.TargetSystem = customtarget
Config.TargetSystem = 'interact' -- choose between qb_target/interact/ox_target/customtarget

Config.Progressbar = {
    Enable = false,         -- True to Enable the progressbar while opening inventory
    minT = 350,             -- Min Time for Inventory to open
    maxT = 500              -- Max Time for Inventory to open
}

--Guns Ammo Capacity

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}

Config.AmmoBoxes = false -- If this is enabled then you can use ammboxes in return for ammo
