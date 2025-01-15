local S = core.get_translator("dictatorstan")
local M = {}
local storage = dofile(modpath .. "/storage.lua")

M.state_init = function(player, name)
	if name == "" then
		return false, S("State name cannot be empty!")
	end
	if storage.get_table("states_" .. name) ~= nil then
		return false, S("State name already taken")
	end
	storage.set_table("states_" .. name, { dictator = player })
	return true, S("State @1 created!", name)
end

M.state_info = function(name)
	local state = storage.get_table("states_" .. name)
	if state == nil then
		return false, S("State not found")
	end
	return true, S("name: @1", name) .. "\n" .. S("dictator: @1", state.dictator)
end

return M
