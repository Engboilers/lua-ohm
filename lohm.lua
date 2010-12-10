local Model = require "lohm.model"
module ("lohm", function(self)
	setmetatable(self, {__call = self.new})
end)

--arguments:
	-- key (string/function): sprintf-able string or a function to generate a key. something like "myfoo:%s"
	-- model (table): extra functions etc. belonging to the model
	-- object (table): extra functions  etc. for objects
	-- indices (table): attributes to index (and with what index, if given. defaults to Index:defaultIndex()

function new(arg, redis_connection)
	return Model.new(arg, redis_connection)
end
