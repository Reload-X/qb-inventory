--GLOVEBOX
Config.GloveboxMaxWeight = 15000
Config.GloveboxMaxSlots = 15

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

--Vehicle Trunk
Config.TrunkInventory = {
    default = { -- This is the default inventory for all vehicles not specified in classes or vehicles below
        weight = 60000,
        slots = 35,
    },
    classes = { -- This is the inventory for each class of vehicle
        [0] = { -- Compacts
            maxWeight = 38000,
            slots = 30,
        },
        [1] = { -- Sedans
            maxWeight = 50000,
            slots = 40,
        },
        [2] = { -- SUV
            maxWeight = 75000,
            slots = 50,
        },
        [3] = { -- Coupes
            maxWeight = 42000,
            slots = 35,
        },
        [4] = { -- Muscle
            maxWeight = 38000,
            slots = 30,
        },
        [5] = { -- Sport Classic
            maxWeight = 30000,
            slots = 25,
        },
        [6] = { -- Sports
            maxWeight = 30000,
            slots = 25,
        },
        [7] = { -- Super
            maxWeight = 30000,
            slots = 25,
        },
        [8] = { -- Motorcycles
            maxWeight = 15000,
            slots = 15,
        },
        [9] = { -- Off-Road
            maxWeight = 60000,
            slots = 35,
        },
        [10] = { -- Industrial
            maxWeight = 60000,
            slots = 35,
        },
        [11] = { -- Utility
            maxWeight = 60000,
            slots = 35,
        },
        [12] = { -- Vans
            maxWeight = 120000,
            slots = 35,
        },
        [13] = { -- Cycles
            maxWeight = 0,
            slots = 0,
        },
        [14] = { -- Boats
            maxWeight = 120000,
            slots = 50,
        },
        [15] = { --Helicopter
            maxWeight = 120000,
            slots = 50,
        },
        [16] = { -- Planes
            maxWeight = 120000,
            slots = 50,
        },
        [17] = { -- Service
            maxWeight = 120000,
            slots = 50,
        },
        [18] = { -- Emergency
            maxWeight = 120000,
            slots = 50,
        },
        [19] = { -- Military
            maxWeight = 120000,
            slots = 50,
        },
        [20] = { -- Commercial
            maxWeight = 120000,
            slots = 50,
        },
        [21] = { -- Trains
            maxWeight = 120000,
            slots = 50,
        },
        [22] = { -- Open Wheel
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