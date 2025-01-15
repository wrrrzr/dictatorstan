local S = core.get_translator("dictatorstan")
local state = dofile(modpath .. "/state.lua")

core.register_chatcommand("state_init", {
	privs = {
		interact = true,
	},
	func = function(name, param)
		return state.state_init(name, param)
	end,
})

core.register_chatcommand("state_info", {
	privs = {
		interact = true,
	},
	func = function(name, param)
		return state.state_info(param)
	end,
})
