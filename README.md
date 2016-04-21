utc_time.lua - return server time in UTC, format: Y/m/d h:i:s

Exmaple of nginx location:

location = /api/time/ {
  content_by_lua_file utc_time.lua;
}

Set Utc time in request Headers:
header_filter_by_lua 'ngx.header["X-Timestamp"] = ngx.time()';
