QB = {}

QB.Spawns = {
    ["legion"] = {
        coords = vector4(195.17, -933.77, 29.7, 144.5),
        location = "legion",
        label = "Legion Square",
        pos = {top = 46, left = 60}
    },
    ["policedp"] = {
        coords = vector4(428.23, -984.28, 29.76, 3.5),
        location = "policedp",
        label = "Police Department",
        pos = {top = 41, left = 61}
    },
    ["paleto"] = {
        coords = vector4(80.35, 6424.12, 31.67, 45.5),
        location = "paleto",
        label = "Paleto Bay",
        pos = {top = 42, left = 7}
    },

    ["motel"] = {
        coords = vector4(-3238.03, 1013.9, 12.26, 268.43),
        location = "motel",
        label = "Barbareno Road",
        pos = {top = 86, left = 46}
    },
    ["sandy"] = {
        coords = vector4(2050.31, 3727.03, 32.91, 219.25),
        location = "sandy",
        label = "Sandy Shores",
        pos = {top = 22, left = 29},
    },
}

QB.SpawnAccess = { --To disable the buttons
    ['apartments'] = false,
    ['houses'] = true,
    ['lastLoc'] = true,
}