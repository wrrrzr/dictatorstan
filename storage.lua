local M = {}
local storage = core.get_mod_storage()

M.set_table = function(key, value)
	storage:set_string(key, core.serialize(value))
end

M.get_table = function(key)
	return core.deserialize(storage:get_string(key))
end
return M
