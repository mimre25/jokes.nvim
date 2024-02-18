local static = require("joke.static")
local utils = require("joke.utils.utils")
local main = {}

function main.setup(config)
    if config ~= nil then
	    static.config = utils.merge_tables(static.config, config)
    end
end

function main.get_joke()
    return static.config.jokes[math.random(#static.config.jokes)]
end

return main

