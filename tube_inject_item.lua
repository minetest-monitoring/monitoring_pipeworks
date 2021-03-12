local metric_tube_inject_item_calls = monitoring.counter(
  "pipeworks_tube_inject_item_calls",
  "count of pipeworks.tube_inject_item calls"
)

local metric_tube_inject_item_time = monitoring.counter(
  "pipeworks_tube_inject_item_time",
  "time of pipeworks.tube_inject_item calls"
)

local old_inject_item = pipeworks.tube_inject_item

pipeworks.tube_inject_item = function(...)
	if monitoring.pipeworks.enabled then
		-- only allow call if the mod is in "enabled" state
		old_inject_item(...)
	end
end

-- wrap metrics interceptor around it
pipeworks.tube_inject_item = metric_tube_inject_item_calls.wrap(
  metric_tube_inject_item_time.wraptime(pipeworks.tube_inject_item)
)
