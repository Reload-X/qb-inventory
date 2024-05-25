Config = {}

Framework = "QBCore"
if Framework == "QBCore" then
    Config.CoreName = "qb-core" -- your core name
    FWork = exports[Config.CoreName]:GetCoreObject()
end

--Player
Config.MaxInventoryWeight = 120000 -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 25 -- Max inventory slots for a player

--GLOVEBOX
Config.GloveboxMaxWeight = 15000
Config.GloveboxMaxSlots = 15

--TRUNK
Config.MaxTrunkWeight = 25000
Config.MaxTrunkSlots = 25

-- --KEYBINDS
Config.KeyBinds = {
    Inventory = 'TAB',
    HotBar = 'Z'
}

--END

--Target/Drop System
Config.CleanupDropTime = 15 * 60 -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5 -- The distance in GTA Units that a drop can be seen
Config.ItemDropObject = `sf_prop_sf_backpack_01a` -- if Config.UseItemDrop = true, this will be the prop that spawns for the item //  if its false it will be a marker
Config.Waittime = 0 -- Time to open inventory 2000 = 2 seconds
Config.OrApartment = false

--Floor Drops/Vending
Config.UseItemDrop = true -- This will enable item object to spawn on drops instead of markers // if its false it will be a marker
Config.TargetSystem = 'qb-target' -- choose between qb-target/interact

Config.Progressbar = {
    Enable = false,         -- True to Enable the progressbar while opening inventory
    minT = 350,             -- Min Time for Inventory to open
    maxT = 500              -- Max Time for Inventory to open
}

--END

--TRASH CONFIG 
--IF Config.BinEnable = false then everything below will be disabled
Config.BinEnable = true

Config.SearchBinProgress = math.random(3000, 5000)

Config.Timer = 10 -- in seconds

--33% on each to get money/an item or nothing
Config.RewardTypes = {
    [1] = {
        type = "item"
    },
    [2] = {
        type = "money",
    },
    [3] = {
        type = "nothing",
    }
}

--Rewards for small trashcans
Config.RewardsSmall = {
    [1] = {item = "cokebaggy", minAmount = 1, maxAmount = 3},
    [2] = {item = "lockpick", minAmount = 1, maxAmount = 2},
    [3] = {item = "vinremover", minAmount = 1, maxAmount = 1},
    [4] = {item = "rolling_paper", minAmount = 1, maxAmount = 4},
    [5] = {item = "plastic", minAmount = 1, maxAmount = 7},
    [6] = {item = "harness", minAmount = 1, maxAmount = 1},
    [7] = {item = "repairkit", minAmount = 1, maxAmount = 2},
}

--END

--Bin Objects

Config.Objects = {
    -- Bins
    `prop_dumpster_01a`,
    `prop_dumpster_02b`,
    `prop_dumpster_3a`,
    `prop_dumpster_4a`,
    `prop_dumpster_4b`,
    `prop_dumpster_02a`
}

--END HERE

--VENDING

Config.VendingObjects = {
    `prop_vend_soda_01`,
    `prop_vend_soda_02`,
    `prop_vend_water_01`
}

Config.VendingItem = {
    [1] = {
        name = "kurkakola",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 2,
    },
}

--END

--Back Engine Vehicles

BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`comet3`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`gp1`] = true,
    [`autarch`] = true,
    [`tyrant`] = true
}

Config.VehicleInventories = {
    default = { -- This is the default inventory for all vehicles not specified in classes or vehicles below
        weight = 60000,
        slots = 35,
    },
    classes = { -- This is the inventory for each class of vehicle
        [0] = {
            maxWeight = 38000,
            slots = 30,
        },
        [1] = {
            maxWeight = 50000,
            slots = 40,
        },
        [2] = {
            maxWeight = 75000,
            slots = 50,
        },
        [3] = {
            maxWeight = 42000,
            slots = 35,
        },
        [4] = {
            maxWeight = 38000,
            slots = 30,
        },
        [5] = {
            maxWeight = 30000,
            slots = 25,
        },
        [6] = {
            maxWeight = 30000,
            slots = 25,
        },
        [7] = {
            maxWeight = 30000,
            slots = 25,
        },
        [8] = {
            maxWeight = 15000,
            slots = 15,
        },
        [9] = {
            maxWeight = 60000,
            slots = 35,
        },
        [12] = {
            maxWeight = 120000,
            slots = 35,
        },
        [13] = {
            maxWeight = 0,
            slots = 0,
        },
        [14] = {
            maxWeight = 120000,
            slots = 50,
        },
        [15] = {
            maxWeight = 120000,
            slots = 50,
        },
        [16] = {
            maxWeight = 120000,
            slots = 50,
        }
    },
    vehicles = { -- This is the inventory for each vehicle individually
        ["rumpo"] = {
            maxWeight = 80000,
            slots = 40,
        },
        ["sultan"] = {
            maxWeight = 30000,
            slots = 15
        },
        ["baller"] = {
            maxWeight = 50000,
            slots = 25
        }
    }
}

--Guns Ammo Capacity

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}

--END

--Language Config

Config.Lang = {
    --CLIENT
    ["SnowballsCancelled"] = "Cancelled",
    ["VehicleLocked"] = "Vehicle Locked",
    ["NoOneNearby"] = "No one Nearby",
    ["YouDoNotOwnThisItem"] = "You do not own this item",
    ["DumpsterAlreadySearched"] = "This dumpster has already been searched",
    ["FoundMoneyDumpster"] = "Found some Money",
    ["FoundNothingDumpster"] = "Found Nothing",
    ["FoundSomething"] = "Found Something",
    ["StoppedSearching"] = "Stopped Searching",
    --SERVER
    ["ItemDoesNotExist"] = "Item does not exist",
    ["InventoryTooFull"] = "Inventory too Full",
    ["YouDontHaveThisItem"] = "You don\'t have this item!",
    ["NoAccess"] = "Cant open inventory",
    ["YouCantUseThisItem"] = "You cant use this item",
    ["YouCantSellThisItem"] = "You can\'t sell this item..",
    ["YouDontHaveEnoughCash"] = "You dont have enough cash",
    ["ItemBought"] = " bought!",
    ["YouCantGiveYourselfAnItem"] = "You can\'t give yourself an item?",
    ["YouAreTooFarAwayToGiveItems"] = "You are too far away to give items!",
    ["ItemYouTriedGivingNotFound"] = "Item you tried giving not found",
    ["IncorrectItemFoundTryAgain"] = "Incorrect item found try again!",
    ["YouDoNotHaveEnoughOfTheItem"] = "You do not have enough of the item",
    ["YouDoNotHaveEnoughItemsToTransfer"] = "You do not have enough items to transfer",
    ["NotAValidType"] = "Not a valid type..",
    ["ArgumentsNotFilledOutCorrectly"] = "Arguments not filled out correctly!.",
    ["CantGiveItem"] = "Can\'t give item!",
    ["PlayerNotOnline"] = "Player is not online!",
    ["TheOtherPlayersInventoryIsFull"] = "Other players inventory is full",
    ["YouReceived"] = "You received ",
    ["From"] = " From ",
    ["YouGave"] = "You gave ",
    ["Exclamation"] = "!",
    ["YouHaveGiven"] = "You have given ",
}
