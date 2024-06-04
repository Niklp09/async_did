minetest.register_decoration({
	name = "async_did:plant",
	decoration = {
		"air"
	},
	fill_ratio = 0.006,
	y_min = 1,
	y_max = 40,
	place_on = {
		"default:dirt_with_grass",
	},
	deco_type = "simple",
	flags = "all_floors",
})

minetest.register_on_mods_loaded(function() -- some mods un- and re-register decorations (I look at you ethereal)
	local did = minetest.get_decoration_id("async_did:plant")
	minetest.log("warning", "Deco ID on main thread: " .. did)
end)

minetest.register_mapgen_script(minetest.get_modpath(minetest.get_current_modname()) .. "/mapgen.lua")