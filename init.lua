local S = core.get_translator("dictatorstan")

minetest.register_on_joinplayer(function(player)
	local idx = player:hud_add({
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
			return false, "State name cannot be empty!"
		end
		return true, "State " .. param .. " created!"
	end,
})
