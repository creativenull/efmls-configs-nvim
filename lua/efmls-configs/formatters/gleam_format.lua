-- Metadata
-- languages: gleam 
-- url: https://gleam.run/language-server/#code-formatting

local fs = require("efmls-configs.fs")
local formatter = "gleam"
local args = "format --stdin"
local command = string.format("%s %s", fs.executable(formatter), args)

return {
	formatCommand = command,
	formatStdin = true,
}

