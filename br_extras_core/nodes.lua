for i = 0, 2 do
    core.register_node('br_extras_core:br_48_shelf_' .. i, {
        description = 'br_extras_core:br_48_shelf_' .. i,
        pointable = true,
        groups = { oddly_breakable_by_hand = (br_core.dev_mode and 2) or 0 },
        tiles = { {
            name = "br_extras_meta_empty_shelf.png^[multiply:#858585" ..
                "^br_extras_meta_overlay_store_shelf_" .. i .. ".png^[opacity:100",
            align_style = "world",
            scale = 1,
        } },
        sunlight_propagates = false,
        paramtype = "light",
    })
end



minetest.register_node('br_extras_core:br_48_shelf_empty', {
    description = 'br_extras_nodes_nodes:br_48_shelf_empty',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { {
        name = "br_extras_meta_empty_shelf.png^[multiply:#858585",
        align_style = "world",
        scale = 1,
    } },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"
})
minetest.register_node('br_extras_core:br_48_product_hanger', {
    description = 'br_extras_nodes_nodes:br_48_product_hanger',
    pointable = true,
    drawtype = "mesh",
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_meta_blank.png" },
    sunlight_propagates = false,
    wallmounted_rotate_vertical = false,
    mesh = "br_48_product_hanger.obj",
    collision_box = {
        type = "fixed",
        fixed = { -1 / 4, -1 / 2, -1 / 4, 1 / 4, -1 / 8, 1 / 4 },
    },
    selection_box = { { type = "fixed", fixed = { -0.05, -0.5, -0.35, 0.05, 0.40, 0.05 } } },
    sounds = br_sounds.steel(),
    paramtype = "light",
    paramtype2 = "facedir"
})
minetest.register_node('br_extras_core:br_48_pegboard', {
    description = 'br_extras_nodes_nodes:br_48_pegboard',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_pegboard.png" },
    sunlight_propagates = false,
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {
            { -0.5, -0.5, -0.05, 0.5, 0.5, 0.05 },
        },
    },
    selection_box = {
        type = "fixed",
        fixed = {
            { -0.5, -0.5, -0.05, 0.5, 0.5, 0.05 },
        },
    },
    sounds = br_sounds.steel(),
    on_place = function(itemstack, placer, pointed_thing)
        local node = core.get_node(pointed_thing.under)
        if core.registered_nodes[node.name] then
            local dir = core.dir_to_facedir(placer:get_look_dir())
            local pos = pointed_thing.above
            core.set_node(pos, { name = "br_extras_core:br_48_pegboard", param2 = dir })
            return itemstack
        else
            return itemstack
        end
    end,
    paramtype = "light",
    paramtype2 = "facedir"
})


minetest.register_node('br_extras_core:fridge_0_bottom', {
    description = 'br_extras_core:fridge_0_bottom',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_concrete_meta_3.png", "br_duct_0.png", "br_duct_0.png", "br_duct_0.png",
        {
            name = "br_48_fridge_0_bottom.png",
            tileable_vertical = false,
            tileable_horizontal = true
        } },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light",
    lightsource = 0.1,
    paramtype2 = "facedir"
})

minetest.register_node('br_extras_core:fridge_0_middle', {
    description = 'br_extras_core:fridge_0_middle',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_concrete_meta_3.png", "br_duct_0.png", "br_duct_0.png", "br_duct_0.png",
        {
            name = "br_48_fridge_0_middle.png",
            tileable_vertical = false,
            tileable_horizontal = true
        } },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    lightsource = 0.1,
    paramtype = "light",
    paramtype2 = "facedir"
})
minetest.register_node('br_extras_core:br_48_fridge_0_top', {
    description = 'br_extras_core:br_48_fridge_0_top',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_concrete_meta_3.png", "br_duct_0.png", "br_duct_0.png", "br_duct_0.png",
        {
            name = "br_48_fridge_0_top.png",
            tileable_vertical = false,
            tileable_horizontal = true
        } },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    lightsource = 0.1,
    paramtype = "light",
    paramtype2 = "facedir"
})

minetest.register_node('br_extras_core:br_48_produce_0', {
    description = 'br_extras_core:br_48_produce_0',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_produce_0.png", {
        name = "br_48_produce_shelf.png",
        tileable_vertical = false,
        tileable_horizontal = true
    }
    },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"
})

minetest.register_node('br_extras_core:br_48_produce_1', {
    description = 'br_extras_core:br_48_produce_1',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_produce_1.png", {
        name = "br_48_produce_shelf.png",
        tileable_vertical = false,
        tileable_horizontal = true
    }
    },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"
})


minetest.register_node('br_extras_core:br_48_clothes_hanger', {
    description = 'br_extras_core:br_48_clothes_hanger',
    pointable = true,
    drawtype = "mesh",
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_clothes_hanger.png" },
    --visual_scale = 0.15,
    mesh = "br_48_clothes_hanger.obj",
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light",
    paramtype2 = "facedir"
})

for i = 0, 1 do
    core.register_node('br_extras_core:gendered_decal' .. "_" .. (i), {
        description = 'br_extras_core:gendered_decal',
        pointable = br_core.nodes_pointable or false,
        groups = { dig_immediate = (br_core.dev_mode and 3) or 0 },
        drawtype = "nodebox",
        paramtype2 = "facedir",
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {
                {
                    (-8) / 16, (-8) / 16, (7.9) / 16,
                    (8) / 16, (8) / 16, (7.8) / 16,
                },
            },
        },
        node_box = {
            type = "fixed",
            fixed = {
                {
                    (-8) / 16, (-8) / 16, (7.9) / 16,
                    (8) / 16, (8) / 16, (7.8) / 16,
                },
            },
        },
        sunlight_propagates = true,
        use_texture_alpha = "clip",
        walkable = false,
        tiles = { {
            name = "(br_extras_gendered_decal.png^[multiply:" .. "#334" .. "^[verticalframe:2:" .. (i) .. ")",
        } },
        sounds = br_sounds.default(),
        light_source = 1,
    })
end

--- BR 10
minetest.register_node('br_extras_core:br_10_dirt', {
    description = 'br_extras_core:dirt',
    pointable = true,
    groups = { oddly_breakable_by_hand = (br_core.dev_mode and 3) or 0 },
    tiles = { {
        name = "br_extras_meta_soil.png^[multiply:#ffd624",
        align_style = "world",
        scale = 1,
    } },
    sunlight_propagates = false,
    paramtype = "light",
})

--wheat
for i = 0, 1 do
    core.register_node('br_extras_core:br_10_wheat' .. "_" .. (i), {
        description = 'br_extras_core:br_10_wheat',
        pointable = br_core.nodes_pointable or false,
        groups = { dig_immediate = (br_core.dev_mode and 3) or 0, in_creative_inventory = 0 },
        drawtype = "plantlike",
        paramtype2 = "facedir",
        paramtype = "light",
        sunlight_propagates = true,
        use_texture_alpha = "clip",
        walkable = false,
        tiles = { {
            name = "(br_extras_meta_tallgrass.png^[multiply:#ffe470^[verticalframe:2:" .. (i) .. ")",
        } },
        sounds = br_sounds.default(),
    })
end


-- BR 84


minetest.register_node('br_extras_core:br_84_hedge', {
    description = 'br_extras_core:br_84_hedge',
    pointable = true,
    groups = { dig_immediate = (br_core.dev_mode and 3) or 0 },
    tiles = { {
        name = "br_extras_meta_hedge.png^[multiply:#788e61",
        align_style = "world",
        scale = 1,
    } },
    --tiles = { "br_84_hedge.png" },
    sunlight_propagates = false,
    paramtype = "light",
})

pmb_util.register_all_shapes('br_extras_core:br_84_hedge')


core.register_node('br_extras_core:84_secret_easter_egg', {
    description = 'br_extras_core:84_secret_easter_egg',
    pointable = br_core.nodes_pointable or false,
    groups = { dig_immediate = (br_core.dev_mode and 3) or 0 },
    drawtype = "nodebox",
    paramtype2 = "facedir",
    paramtype = "light",
    selection_box = {
        type = "fixed",
        fixed = {
            {
                (-8) / 16, (-8) / 16, (7.9) / 16,
                (8) / 16, (8) / 16, (7.8) / 16,
            },
        },
    },
    node_box = {
        type = "fixed",
        fixed = {
            {
                (-8) / 16, (-8) / 16, (7.9) / 16,
                (8) / 16, (8) / 16, (7.8) / 16,
            },
        },
    },
    sunlight_propagates = true,
    use_texture_alpha = "clip",
    walkable = false,
    tiles = { {
        name =
        "[png:iVBORw0KGgoAAAANSUhEUgAAAAoAAAATCAYAAACp65zuAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAdnJLH8AAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlzAAAuIwAALiMBeKU/dgAAAAd0SU1FB+kKAxQ3AVm1zKsAAADlSURBVCjPY2BAAvevbPzPwMDAMPPMk/8MaIAJXQCXYhSFijr+jHCJ89txmzh79uz/Tt45cEWK8rL/MRTOnj0bw1143VhVU4dVIQuMkZqayojPdJy+ZmBgYLj/8DEjhokMDAwMP57L/H/+loHhwII2uFii49L/WE1EBjBF8/dHMzKim5gcwgrn7ytfid2NHJJPGJcevc+IbvJzPzNGFnxWP/czY8Rq4o6Xbf93vGz7jzfAYQrON51n0DEwwQzw2SpG/xkYGBgWB82GK7hy4Qx2t8AUI/PRxVhwKUYHjLgUpt45hxJMAH3qW7Z8A7KeAAAAAElFTkSuQmCC^"
    } },
    sounds = br_sounds.default(),
    light_source = 1,
})


-- BR ??

for i = 0, 2 do
    core.register_node('br_extras_core:br_bookshelf_' .. i, {
        description = 'br_extras_core:br_bookshelf',
        pointable = true,
        groups = { oddly_breakable_by_hand = (br_core.dev_mode and 2) or 0 },
        tiles = { {
            name = "br_extras_meta_empty_shelf.png^[multiply:#796035" ..
                "^br_extras_meta_overlay_bookshelf_" .. i .. ".png^[opacity:100",
            align_style = "world",
            scale = 1,
        } },
        sunlight_propagates = false,
        paramtype = "light",
    })
end
