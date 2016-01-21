ngx.header.content_type = "application/json"

local time = ngx.utctime()
local datetime = time:gsub("-", "/")

-- return time in format: Y/m/d h:i:s
ngx.say('{"datetime" : "' .. datetime ..'"}');