local fs = require("efmls-configs.fs")

local formatter = "stylelint"
local args = "--fix --stdin"
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
	formatCommand = command,
	formatStdin = true,
	rootMarkers = { ".stylelintrc", ".stylelintrc.json", ".stylelintrc.yml", ".stylelintrc.yaml" },
}
