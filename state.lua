local S = core.get_translator("dictatorstan")
local M = {}
local storage = dofile(modpath .. "/storage.lua")

M.create_state = function(player, name)
	storage.set_table("states_" .. name, { dictator = player })
end

M.state_info = function(name)
	local state = storage.get_table("states_" .. name)
	if state == nil then
		return S("State not found")
	end
	return S("name: @1", name) .. "\n" .. S("dictator: @1", state.dictator)
end

return M
