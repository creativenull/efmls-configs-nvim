-- Metadata
-- languages: markdown
-- url: https://github.com/DavidAnson/markdownlint

local fs = require("efmls-configs.fs")

local linter = "markdownlint"
local command = string.format("%s --config %q --stdin", fs.executable(linter))

return {
	prefix = linter,
	lintSource = linter,
	lintCommand = command,
	lintIgnoreExitCode = true,
	lintStdin = true,
	lintFormats = { "%f:%l:%c %m", "%f:%l %m", "%f: %l: %m" },
}
