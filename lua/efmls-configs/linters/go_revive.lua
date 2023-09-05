-- Metadata
-- languages: go
-- url: https://github.com/mgechev/revive

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'revive'
local command = string.format('%s -formatter unix', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = {},
}
