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
    tiles = { { "br_concrete_meta_3.png^[colorize:#eef:255^(br_meta_overlay_dirt_1.png^[multiply:#753^[opacity:10)" } },
    sunlight_propagates = false,
    mesh = "br_48_product_hanger.obj",
    visual_scale = 0.001,
    sounds = br_sounds.steel(),
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
    paramtype = "light"
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
    paramtype = "light"
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
