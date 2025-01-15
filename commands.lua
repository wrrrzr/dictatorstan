local S = core.get_translator("dictatorstan")
local state = dofile(modpath .. "/state.lua")

core.register_chatcommand("init_state", {
	privs = {
		interact = true,
	},
	func = function(name, param)
		if param == "" then
			return false, S("State name cannot be empty!")
		end
		state.create_state(name, param)
		return true, S("State @1 created!", param)
	end,
})

core.register_chatcommand("info_state", {
	privs = {
		interact = true,
	},
	func = function(name, param)
		return true, state.state_info(param)
	end,
})
