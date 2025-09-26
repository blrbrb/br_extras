minetest.register_node('br_extras_nodes:br_48_shelf_0', {
    description = 'br_extras_nodes:br_48_shelf_0',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_shelf_0.png" },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"

})

minetest.register_node('br_extras_nodes:br_48_shelf_1', {
    description = 'br_store:br_48_shelf_1',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_shelf_1.png" },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"
})


minetest.register_node('br_extras_nodes:br_48_shelf_2', {
    description = 'br_extras_nodes_nodes:br_48_shelf_2',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_shelf_2.png" },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"
})


minetest.register_node('br_extras_nodes:br_48_shelf_empty', {
    description = 'br_extras_nodes_nodes:br_48_shelf_empty',
    pointable = true,
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_shelf_empty.png" },
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light"
})
minetest.register_node('br_extras_nodes:br_48_product_hanger', {
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
minetest.register_node('br_extras_nodes:br_48_pegboard', {
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
            core.set_node(pos, { name = "br_extras_nodes:br_48_pegboard", param2 = dir })
            return itemstack
        else
            return itemstack
        end
    end,
    paramtype = "light",
    paramtype2 = "facedir"
})


minetest.register_node('br_extras_nodes:fridge_0_bottom', {
    description = 'br_extras_nodes:fridge_0_bottom',
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
    paramtype2 = "facedir"
})
minetest.register_node('br_extras_nodes:br_48_fridge_0_top', {
    description = 'br_extras_nodes:br_48_fridge_0_top',
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
    paramtype = "light",
    paramtype2 = "facedir"
})

minetest.register_node('br_extras_nodes:br_48_produce_0', {
    description = 'br_extras_nodes:br_48_produce_0',
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

minetest.register_node('br_extras_nodes:br_48_produce_1', {
    description = 'br_extras_nodes:br_48_produce_1',
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


minetest.register_node('br_extras_nodes:br_48_clothes_hanger', {
    description = 'br_extras_nodes:br_48_clothes_hanger',
    pointable = true,
    drawtype = "mesh",
    groups = { oddly_breakable_by_hand = 2 },
    tiles = { "br_48_clothes_hanger.png" },
    visual_scale = 0.15,
    mesh = "br_48_clothes_hanger.obj",
    sunlight_propagates = false,
    sounds = br_sounds.steel(),
    paramtype = "light",
    paramtype2 = "facedir"
})
