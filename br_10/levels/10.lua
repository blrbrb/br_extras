local mod_name = minetest.get_current_modname()
local mod_path = minetest.get_modpath(mod_name)
local S = minetest.get_translator(mod_name)

local function sch(name)
    return (mod_path .. DIR_DELIM .. "schematics" .. DIR_DELIM .. name .. ".mts")
end

-- hub
br_core.register_level({
    level = 10,         -- actual index of the level, will overwrite any level of the same name
    desc = S("Level 10"),
    secret = false,     -- if true, the photo/achievement is not given automatically to the player on join
    danger = 0,         -- not used in game, but for compat with possible mods; 0=safe, 1=rare, 2=danger, 3=ridiculously dangerous
    grace_dist = 5,     -- how much circular distance the first biome takes up around 0,0
    biome = {},         -- must be set to this, don't change
    segsize = 26,       -- width and length of each schematic to place
    base_height = 3,    -- how high the spawn should be, how thick the floor of your level is (if you have 20 nodes below the playable area, set to 20)
    sun = {
        visible = true, -- if false, shadows are turned off
        -- texture = "blank.png", -- makes sun invisible, but keeps shadows
        sunrise_visible = true,
    },
    moon = {
        visible = true,
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
        clouds = true
    },
})



br_core.register_biome({
    level = 10,
    desc = S("Level 10"),
    danger = 0,
    segheight = 1,
    prevalence = 2,
    can_generate = function(pos)
        return true
    end,
    schems = {
        { name = sch("10_rooms_0"), prevalence = 6, vertical_segments = { 0, 1 } },
        {
            name = sch("10_barn_portal"),
            vertical_segments = { 0, 1 },
            can_generate = function(pos, perlin)
                ---core.debug(((pos.x %  == 0) and pos.z % 5 == 0))
                return ((pos.x % 5 == 0) and pos.z % 7 == 0)
            end
        },
        {
            name = sch("10_barn_0"),
            vertical_segments = { 0, 1 },
            can_generate = function(pos, perlin)
                ---core.debug(((pos.x %  == 0) and pos.z % 5 == 0))
                return ((pos.x % 7 == 0) and pos.z % 5 == 0)
            end
        },
        {
            name = sch("10_silo"),
            can_generate = function(pos, perlin)
                --core.debug(((pos.x % 128 == 0) and pos.z % 128 == 0))
                return ((pos.x % 5 == 0) and pos.z % 7 == 0)
            end,
            vertical_segments = { 0, 1 }
        },

        --{ name = sch("48_rooms_6"), prevalence = 1,   vertical_segments = { 0, 1 } },
        --{ name = sch("48_rooms_8"), prevalence = 0.5, vertical_segments = { 0, 1 } },
    }
})

br_core.register_level_sound({
    level = 10,
    time = 20,
    on_play = function(self, dtime, player)
        local can_play = false
        local playing = br_core.sound_get_tag("br_misty_hedges", player)
        if playing == nil or #playing < 1
            or (playing and playing[1].fading and #playing <= 1) then
            can_play = true
        end
        if can_play then
            br_core.sound_play("br_misty_hedges", player, {
                name = "br_misty_hedges",
                level = 10,
                gain = (br_sounds.master or 1) * math.random() * 0.1,
                fade = 0.9,
                -- single_sound = true,
                max_hear_distance = 50,
                to_player = player:get_player_name(),
                -- pos = get_centre_of_segment(player:get_pos()),
                time = 20,
            })
        end
    end
})


br_core.achievements.register_default(10)
