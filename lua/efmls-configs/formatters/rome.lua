local fs = require('efmls-configs.fs')

local formatter = "rome"
local args = "format --stdin-file-path ${INPUT}"
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
	formatCommand = command,
	formatStdin = true,
	rootMarkers = { "rome.json" },
}
