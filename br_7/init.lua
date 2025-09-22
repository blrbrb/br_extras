local mod_name = minetest.get_current_modname()
local mod_path = minetest.get_modpath(mod_name)
local S = minetest.get_translator(mod_name)

br_7 = {}

dofile(mod_path .. DIR_DELIM .. "levels" .. DIR_DELIM .. "7.lua")
