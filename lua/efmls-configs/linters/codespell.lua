-- Metadata
-- languages: misc
-- url: https://github.com/codespell-project/codespell

local fs = require("efmls-configs.fs")

local linter = "codespell"

-- HACK piping to `sed` to change severity to warning
local command = string.format("%s --ignore-words %q ${INPUT} | sed 's/^/w /'", fs.executable(linter))

return {
	prefix = linter,
	lintSource = linter,
	lintCommand = command,
	lintIgnoreExitCode = true,
	lintStdin = false,
	lintFormats = { "%t %f:%l:%m" },
}
