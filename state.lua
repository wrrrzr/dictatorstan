local S = core.get_translator("dictatorstan")
local M = {}

M.states = {}

M.create_state = function(player, name)
	M.states[name] = { owner = player }
end

M.state_info = function(name)
	local state = M.states[name]
	return S("name: @1\nowner: @2", name, state.owner)
end

return M
