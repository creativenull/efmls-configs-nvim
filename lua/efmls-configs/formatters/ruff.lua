local fs = require('efmls-configs.fs')

local formatter = "ruff"
local args = "check --fix-only --no-cache --stdin-filename ${INPUT}"
local command = string.format("%s %s", fs.executable(formatter), args)

return {
	formatCommand = command,
	formatStdin = true,
	rootMarkers = { "pyproject.toml", "setup.py", "requirements.txt" },
}
