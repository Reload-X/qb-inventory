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