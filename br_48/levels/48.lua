local mod_name = minetest.get_current_modname()
local mod_path = minetest.get_modpath(mod_name)
local S = minetest.get_translator(mod_name)

local function sch(name)
    return (mod_path .. DIR_DELIM .. "schematics" .. DIR_DELIM .. name .. ".mts")
end

-- hub
br_core.register_level({
    level = 48,         -- actual index of the level, will overwrite any level of the same name
    desc = S("Level 48"),
    secret = false,     -- if true, the photo/achievement is not given automatically to the player on join
    danger = 0,         -- not used in game, but for compat with possible mods; 0=safe, 1=rare, 2=danger, 3=ridiculously dangerous
    grace_dist = 5,     -- how much circular distance the first biome takes up around 0,0
    biome = {},         -- must be set to this, don't change
    segsize = 16,       -- width and length of each schematic to place
    base_height = 2,    -- how high the spawn should be, how thick the floor of your level is (if you have 20 nodes below the playable area, set to 20)
    sun = {
        visible = true, -- if false, shadows are turned off
        -- texture = "blank.png", -- makes sun invisible, but keeps shadows
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
        { name = sch("48_rooms_5"),    prevalence = 2, vertical_segments = { 0, 1 } },
    }
})




-- adds a photo of the level
br_core.achievements.register_default(48)


--[[
    rotation="0" will lock the rotation to 0 or whatever other direction (0, 90, 180, 270)
    no_rotation=true just means "0"
    prevalence is how common it is, but avoid setting huge values
    skip_above=3 means it will place this schematic, and then the next 3 vertical segments will
        be skipped to prevent game from generating on top of previous ones
    vertical_segments is a list of positions that allow (1) or disallow (0) placing this schematic
        so if you have a basement schem, you set it to {1,0} and a ground floor would be {0,1} because
        you don't want basements spawning on the ground floor

    {name="154_rooms_0", rotation="0", prevalence=1, vertical_segments={1,0,0,0}, skip_above=3},

]] --
