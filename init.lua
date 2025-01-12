local S = core.get_translator("dictatorstan")

modpath = core.get_modpath("dictatorstan")

local state = dofile(modpath .. "/state.lua")

core.register_on_joinplayer(function(player)
	player:hud_add({
		type = "text",
		position = { x = 0.5, y = 0.5 },
		offset = { x = 0, y = 0 },
		text = S("Hello world!"),
		alignment = { x = 0, y = -2 },
		scale = { x = 100, y = 100 },
		number = 0xFFFFFF,
	})
end)

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
