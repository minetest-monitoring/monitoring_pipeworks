minetest.register_chatcommand("pipeworks_flush", {
	description = "flushes the pipeworks tubes",
	privs = {server=true},
	func = function(name)
		minetest.log("warning", "Player " .. name .. " flushes the pipeworks tubes")
		local count = monitoring.pipeworks.flush()
		minetest.log("warning", "Flushed: " .. count .. " items")
		return true, "Flushed: " .. count .. " items"
	end
})

minetest.register_chatcommand("pipeworks_stats", {
	description = "Returns some pipeworks stats",
	privs = {interact=true},
	func = function()
		local count = 0
		for _, _ in pairs(pipeworks.luaentity.entities) do
			count = count + 1
		end
		return true, "Items in tubes: " .. count
	end
})

minetest.register_chatcommand("pipeworks_enable", {
	description = "enables the pipeworks mod",
	privs = {server=true},
	func = function(name)
		monitoring.pipeworks.enabled = true
		minetest.log("warning", "Player " .. name .. " enables the pipeworks mod")
		return true, "Pipeworks enabled"
	end
})

minetest.register_chatcommand("pipeworks_disable", {
	description = "disables the pipeworks mod",
	privs = {server=true},
	func = function(name)
		-- flush pipes and disable
		monitoring.pipeworks.flush()
		monitoring.pipeworks.enabled = false
		minetest.log("warning", "Player " .. name .. " disables the pipeworks mod")
		return true, "Pipeworks disabled"
	end
})
