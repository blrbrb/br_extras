local mod_name = minetest.get_current_modname()
local mod_path = minetest.get_modpath(mod_name)
local S = minetest.get_translator(mod_name)

local function sch(name)
    return (mod_path .. DIR_DELIM .. "schematics" .. DIR_DELIM .. name .. ".mts")
end

-- hub
br_core.register_level({
    level = 48,
    desc = S("Level 48"),
    secret = false,
    danger = 0,
    grace_dist = 5,
    biome = {},
    segsize = 16,
    base_height = 9,
    sun = {
        visible = false,
        sunrise_visible = false,
    },
    moon = {
        visible = false,
    },
    clouds = {
        density = 0.6,
        thickness = 2.3,
        ambient = "#fff",
        color = "#ffffff20",
        height = (154 * br_core.level_height - br_core.offset) + 10,
        speed = { x = 2.7, z = 3 }
    },
    sky = { -- look at api set_sky() for details
        base_color = "#ffffff",
        type = "regular",
        clouds = false,
        sky_color = {
            day_sky = "#fff",
            day_horizon = "#223",
            dawn_sky = "#000",
            dawn_horizon = "#000",
            night_sky = "#263965",
            night_horizon = "#263965",
            indoors = "#AF0125",
            fog_sun_tint = "#263965",
            fog_moon_tint = "#263965",
            fog_tint_type = "custom",
        }
    },
})

br_core.register_biome({
    level = 48,
    desc = S("Level 48 Store"),
    danger = 0,                  -- not used yet either, see above
    segheight = 7,               -- how high the schematics are (use smallest size and then skip_above to do complex stuff)
    prevalence = 3,              -- how common this biome is within the level; avoid large numbers
    can_generate = function(pos) -- must always be deterministic; no use of math.random
        return true
    end,
    schems = {
        { name = sch("48_rooms_0"),    prevalence = 2, vertical_segments = { 0, 1 } },
        { name = sch("48_rooms_1"),    prevalence = 1, vertical_segments = { 0, 1 } },
        { name = sch("48_hallways_0"), prevalence = 3, vertical_segments = { 0, 1 } },
        { name = sch("48_rooms_4"),    prevalence = 1, vertical_segments = { 0, 1 } },
        { name = sch("48_rooms_9"),    prevalence = 1, vertical_segments = { 0, 1 } },
        { name = sch("48_rooms_10"),   prevalence = 1, vertical_segments = { 0, 1 } },

    }
})

br_core.register_biome({
    level = 48,
    desc = S("Level 48 Clothing Aisle"),
    danger = 0,
    segheight = 7,
    prevalence = 2,
    can_generate = function(pos)
        return true
    end,
    schems = {
        { name = sch("48_rooms_5"), prevalence = 3, vertical_segments = { 0, 1 } },
        { name = sch("48_rooms_6"), prevalence = 1, vertical_segments = { 0, 1 } },
        {
            name = sch("48_rooms_8"),
            can_generate = function(pos, perlin)
                return ((pos.x % 7 == 0) and pos.z % 7 == 0)
            end,
            vertical_segments = { 0, 1 }
        },
    }
})

br_core.register_biome({
    level = 48,
    desc = S("Level 48 Freezer Aisle"),
    danger = 0,
    segheight = 7,
    prevalence = 1,
    can_generate = function(pos)
        return true
    end,
    schems = {
        { name = sch("48_rooms_7"), prevalence = 2, vertical_segments = { 0, 1 } },
        {
            name = sch("48_rooms_portal"),
            can_generate = function(pos, perlin)
                return ((pos.x % 3 == 0) and pos.z % 5 == 0)
            end,
            vertical_segments = { 0, 1 }
        },
    }
})



br_core.achievements.register_default(48)
