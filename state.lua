local S = core.get_translator("dictatorstan")
local M = {}

M.states = {}

M.create_state = function(player, name)
	M.states[name] = { dictator = player }
end

M.state_info = function(name)
	local state = M.states[name]
	if state == nil then
		return S("State not found")
	end
	return S("name: @1", name) .. "\n" .. S("dictator: @1", state.dictator)
end

return M
