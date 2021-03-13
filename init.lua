if not minetest.get_modpath("pipeworks") then
	print("[monitoring] pipeworks extension not loaded")
	return
else
	print("[monitoring] pipeworks extension loaded")
end

monitoring.pipeworks = {
	-- global mod enabled flag
	enabled = true,

	-- 10 minutes item expiration
	item_expiration_seconds = 10 * 60,

	-- only allow this many items per second per mapchunk
	max_inject_items = 100
}

local MP = minetest.get_modpath("monitoring_pipeworks")

dofile(MP.."/entity_count.lua")
dofile(MP.."/expiration.lua")
dofile(MP.."/flush.lua")
dofile(MP.."/filter_action_on.lua")
dofile(MP.."/globalsteps.lua")
dofile(MP.."/metrics.lua")
dofile(MP.."/tube_inject_item.lua")
dofile(MP.."/inject_limiter.lua")
dofile(MP.."/chatcommands.lua")
