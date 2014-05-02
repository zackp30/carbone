maptools_creative = 1 -- Set this to 0 if you want Map Tools nodes and items to appear in the creative inventory.

-- Load translation library if intllib is installed

local S
if (minetest.get_modpath("intllib")) then
	dofile(minetest.get_modpath("intllib").."/intllib.lua")
	S = intllib.Getter(minetest.get_current_modname())
	else
	S = function ( s ) return s end
end

dofile(minetest.get_modpath("maptools").."/aliases.lua")

--[[
Map Tools by Calinou
Licensed under the zlib license for code and CC BY-SA 3.0 for textures, see LICENSE.txt for info.
--]]

-- Redefine cloud so that the admin pickaxe can mine it.

minetest.register_node(":default:cloud", {
	description = S("Cloud"),
	tiles = {"default_cloud.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_defaults(),
})

-- Items

minetest.register_craft({
	type = "fuel",
	recipe = "maptools:infinitefuel",
	burntime = 1000000000,
})

-- Nodes

minetest.register_node("maptools:stone", {
	description = S("Unbreakable Stone"),
	tiles = {"default_stone.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:tree", {
	description = S("Unbreakable Tree"),
	tiles = {"default_tree.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("maptools:dirt", {
	description = S("Unbreakable Dirt"),
	tiles = {"default_dirt.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_dirt_defaults(),
})

minetest.register_node("maptools:wood", {
	description = S("Unbreakable Wooden Planks"),
	tiles = {"default_wood.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("maptools:glass", {
	description = S("Unbreakable Glass"),
	drawtype = "glasslike",
	tiles = {"default_glass.png"},
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("maptools:leaves", {
	description = S("Unbreakable Leaves"),
	drawtype = "allfaces_optional",
	tiles = {"default_leaves.png"},
	paramtype = "light",
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("maptools:sand", {
	description = S("Unbreakable Sand"),
	tiles = {"default_sand.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("maptools:gravel", {
	description = S("Unbreakable Gravel"),
	tiles = {"default_gravel.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.35},
		dug = {name="default_gravel_footstep", gain=0.6},
	}),
})

minetest.register_node("maptools:desert_sand", {
	description = S("Unbreakable Desert Sand"),
	tiles = {"default_desert_sand.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_sand_defaults(),
})

minetest.register_node("maptools:sandstone", {
	description = S("Unbreakable Sandstone"),
	tiles = {"default_sandstone.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:desert_stone", {
	description = S("Unbreakable Desert Stone"),
	tiles = {"default_desert_stone.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:grass", {
	description = S("Unbreakable Dirt with Grass"),
	tiles = {"default_grass.png", "default_dirt.png", "default_dirt.png^default_grass_side.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

minetest.register_node("maptools:fullgrass", {
	description = S("Unbreakable Full Grass"),
	tiles = {"default_grass.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_grass_footstep", gain=0.4},
	}),
})

minetest.register_node("maptools:cobble", {
	description = S("Unbreakable Cobblestone"),
	tiles = {"default_cobble.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:mossycobble", {
	description = S("Unbreakable Mossy Cobblestone"),
	tiles = {"default_mossycobble.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:brick", {
	description = S("Unbreakable Brick"),
	tiles = {"default_brick.png"},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("maptools:playerclip", {
	description = S("Player Clip"),
	inventory_image = "default_steel_block.png^dye_green.png",
	drawtype = "airlike",
	paramtype = "light",
	pointable = false,
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

minetest.register_node("maptools:fullclip", {
	description = S("Full Clip"),
	inventory_image = "default_steel_block.png^dye_blue.png",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

minetest.register_node("maptools:fullclip_face", {
	description = S("Full Clip Face"),
	inventory_image = "default_steel_block.png^dye_white.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4999, 0.5},
	},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative, fall_damage_add_percent=-100},
})

minetest.register_node("maptools:playerclip_bottom", {
	description = S("Player Clip Bottom Face"),
	inventory_image = "default_steel_block.png^dye_orange.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4999, 0.5},
	},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative, fall_damage_add_percent=-100},
})

minetest.register_node("maptools:playerclip_top", {
	description = S("Player Clip Top Face"),
	inventory_image = "default_steel_block.png^dye_yellow.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, 0.4999, -0.5, 0.5, 0.5, 0.5},
	},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative, fall_damage_add_percent=-100},
})

for pusher_num=1,10,1 do
minetest.register_node("maptools:pusher_" .. pusher_num, {
	description = S("Pusher (%s)"):format(pusher_num),
	inventory_image = "default_steel_block.png^default_apple.png",
	drawtype = "nodebox",
	tiles = {"invisible.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	node_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, -0.4999, 0.5},
	},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative, fall_damage_add_percent=-100, bouncy=pusher_num*100},
})
end

minetest.register_node("maptools:lightbulb", {
	description = S("Light Bulb"),
	inventory_image = "default_steel_block.png^default_mese_crystal_fragment.png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	light_source = 15,
	paramtype = "light",
	buildable_to = true,
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

minetest.register_node("maptools:nobuild", {
	description = S("Build Prevention"),
	inventory_image = "default_steel_block.png^bones_bones.png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

minetest.register_node("maptools:nointeract", {
	description = S("Interact Prevention"),
	inventory_image = "default_steel_block.png^default_scorched_stuff.png",
	drawtype = "airlike",
	walkable = false,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

minetest.register_node("maptools:climb", {
	description = S("Climb Block"),
	inventory_image = "default_steel_block.png^default_ladder.png",
	drawtype = "airlike",
	walkable = false,
	climbable = true,
	pointable = false,
	buildable_to = true,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

for damage_num=1,5,1 do
minetest.register_node("maptools:damage_" .. damage_num, {
	description = S("Damaging Block (%s)"):format(damage_num),
	inventory_image = "default_steel_block.png^farming_cotton_" .. damage_num .. ".png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = damage_num,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})
end

minetest.register_node("maptools:kill", {
	description = S("Kill Block"),
	inventory_image = "default_steel_block.png^dye_black.png",
	drawtype = "airlike",
	walkable = false,
	pointable = false,
	damage_per_second = 20,
	paramtype = "light",
	sunlight_propagates = true,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
})

minetest.register_node("maptools:smoke", {
	description = S("Smoke Block"),
	tiles = {"maptools_smoke.png"},
	drawtype = "allfaces_optional",
	walkable = false,
	paramtype = "light",
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	post_effect_color = {a=127, r=127, g=127, b=127},
})

minetest.register_node("maptools:ladder", {
	description = S("Fake Ladder"),
	drawtype = "signlike",
	tiles = {"default_ladder.png"},
	inventory_image = "default_ladder.png",
	wield_image = "default_ladder.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	walkable = false,
	sunlight_propagates = true,
	selection_box = {
		type = "wallmounted",
	},
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sounds = default.node_sound_wood_defaults(),
})

minetest.register_node("maptools:permanent_fire", {
	description = S("Permanent Fire"),
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {{
		name="fire_basic_flame_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = "fire_basic_flame.png",
	light_source = 14,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sunlight_propagates = true,
	walkable = false,
	damage_per_second = 4,
})

minetest.register_node("maptools:fake_fire", {
	description = S("Fake Fire"),
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {{
		name="fire_basic_flame_animated.png",
		animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=1},
	}},
	inventory_image = "fire_basic_flame.png",
	light_source = 14,
	drop = "",
	groups = {unbreakable=1, not_in_creative_inventory = maptools_creative},
	sunlight_propagates = true,
	walkable = false,
})

minetest.register_node("maptools:igniter", {
	drawtype = "airlike",
	inventory_image = "default_steel_block.png^crosshair.png",
	description = S("Igniter"),
	paramtype = "light",
	inventory_image = "fire_basic_flame.png",
	drop = "",
	groups = {igniter=2, unbreakable=1, not_in_creative_inventory = maptools_creative},
	sunlight_propagates = true,
	pointable = false,
	walkable = false,
})

-- Items

minetest.register_craftitem("maptools:copper_coin", {
	description = S("Copper Coin"),
	inventory_image = "maptools_copper_coin.png",
	groups = {not_in_creative_inventory = maptools_creative},
})

minetest.register_craftitem("maptools:silver_coin", {
	description = S("Silver Coin"),
	inventory_image = "maptools_silver_coin.png",
	groups = {not_in_creative_inventory = maptools_creative},
})

minetest.register_craftitem("maptools:gold_coin", {
	description = S("Gold Coin"),
	inventory_image = "maptools_gold_coin.png",
	groups = {not_in_creative_inventory = maptools_creative},
})

minetest.register_craftitem("maptools:infinitefuel", {
	description = S("Infinite Fuel"),
	inventory_image = "maptools_infinitefuel.png",
})

minetest.register_node("maptools:superapple", {
	description = S("Super Apple"),
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"maptools_superapple.png"},
	inventory_image = "maptools_superapple.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {fleshy=3, dig_immediate=3, not_in_creative_inventory = maptools_creative},
	on_use = minetest.item_eat(20),
	sounds = default.node_sound_defaults(),
})

-- Tools

minetest.register_tool("maptools:pick_admin", {
	description = S("Admin Pickaxe"),
	inventory_image = "maptools_adminpick.png",
	groups = {not_in_creative_inventory = maptools_creative},
	tool_capabilities = {
		full_punch_interval = 0,
		max_drop_level = 3,
		groupcaps= {
			unbreakable = {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			fleshy =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			choppy =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			bendy =       {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			cracky =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			crumbly =     {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			snappy =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
		}
	},
})

minetest.register_tool("maptools:pick_admin_with_drops", {
	description = S("Admin Pickaxe with Drops"),
	inventory_image = "maptools_adminpick.png",
	groups = {not_in_creative_inventory = maptools_creative},
	tool_capabilities = {
		full_punch_interval = 0,
		max_drop_level = 3,
		groupcaps= {
			unbreakable = {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			fleshy =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			choppy =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			bendy =       {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			cracky =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			crumbly =     {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
			snappy =      {times={[1]=0, [2]=0, [3]=0}, uses = 0, maxlevel = 3},
		}
	},
})

minetest.register_on_punchnode(function(pos, node, puncher)
	if puncher:get_wielded_item():get_name() == "maptools:pick_admin"
	and minetest.env: get_node(pos).name ~= "air" then
		minetest.env:remove_node(pos) -- The node is removed directly, which means it even works on non-empty containers and group-less nodes.
	end
end)

if minetest.setting_getbool("log_mods") then
	print(S("[maptools] loaded."))
end
