--
-- Hoes
--

minetest.register_tool("farming:hoe_wood", {
	description = "Wood Hoe",
	inventory_image = "farming_hoe_wood.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		groupcaps={
			crumbly = {times={[2]=2.2, [3]=1.00}, uses=10-1, maxlevel=0},
		}
	},
	sound = {breaks = "default_tool_breaks"},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.hoe_on_use(itemstack, placer, pointed_thing.under, 30)
	end
})

minetest.register_tool("farming:hoe_stone", {
	description = "Stone Hoe",
	inventory_image = "farming_hoe_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.4,
		groupcaps={
			crumbly = {times={[1]=2.00, [2]=1.40, [3]=0.80}, uses=40-1, maxlevel=0},
		}
	},
	sound = {breaks = "default_tool_breaks"},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.hoe_on_use(itemstack, placer, pointed_thing.under, 60)
	end
})

minetest.register_tool("farming:hoe_copper", {
	description = "Copper Hoe",
	inventory_image = "farming_hoe_copper.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		groupcaps={
			crumbly = {times={[1]=1.40, [2]=1.10, [3]=0.60}, uses=30-1, maxlevel=0},
		}
	},
	sound = {breaks = "default_tool_breaks"},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.hoe_on_use(itemstack, placer, pointed_thing.under, 40)
	end
})

minetest.register_tool(":farming:hoe_bronze", {
	description = "Bronze Hoe",
	inventory_image = "farming_hoe_bronze.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		groupcaps={
			crumbly = {times={[1]=1.20, [2]=1.00, [3]=0.50}, uses=40-1, maxlevel=0},
		}
	},
	sound = {breaks = "default_tool_breaks"},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.hoe_on_use(itemstack, placer, pointed_thing.under, 40)
	end
})

minetest.register_tool("farming:hoe_steel", {
	description = "Steel Hoe",
	inventory_image = "farming_hoe_steel.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		groupcaps={
			crumbly = {times={[1]=1.00, [2]=0.80, [3]=0.40}, uses=60-1, maxlevel=0},
		}
	},
	sound = {breaks = "default_tool_breaks"},
	on_place = function(itemstack, placer, pointed_thing)
		return farming.hoe_on_use(itemstack, placer, pointed_thing.under, 120)
	end
})

minetest.register_tool("farming:hoe_mese", {
	description = "Mese Hoe",
	inventory_image = "farming_hoe_mese.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		groupcaps={
			crumbly = {times={[1]=1.0, [2]=0.60, [3]=0.20}, uses=30-1, maxlevel=0},
		}
	},
	sound = {breaks = "default_tool_breaks"},
	on_place = function(itemstack, placer, pointed_thing)
		d = 1
		for xi = -d, d do
		for zi = -d, d do
			pos = {x=pointed_thing.under.x+xi, y=pointed_thing.under.y, z=pointed_thing.under.z+zi}
			farming.hoe_on_use(itemstack, placer, pos, 240)
		end
		end
	end
})

--
-- Crafts
--

minetest.register_craft({
	output = "farming:hoe_wood",
	recipe = {
		{"group:tree", "group:tree"},
		{"", "group:stick"},
		{"", "group:stick"}
	}
})

minetest.register_craft({
	output = "farming:hoe_stone",
	recipe = {
		{"group:stone", "group:stone"},
		{"", "group:stick"},
		{"", "group:stick"}
	}
})

minetest.register_craft({
	output = "farming:hoe_copper",
	recipe = {
		{"default:copper_ingot", "default:copper_ingot"},
		{"", "group:stick"},
		{"", "group:stick"}
	}
})

minetest.register_craft({
	output = "farming:hoe_bronze",
	recipe = {
		{"default:bronze_ingot", "default:bronze_ingot"},
		{"", "group:stick"},
		{"", "group:stick"}
	}
})

minetest.register_craft({
	output = "farming:hoe_steel",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"},
		{"", "group:stick"},
		{"", "group:stick"}
	}
})

minetest.register_craft({
	output = "farming:hoe_mese",
	recipe = {
		{"default:mese_crystal", "default:mese_crystal"},
		{"", "group:stick"},
		{"", "group:stick"}
	}
})
