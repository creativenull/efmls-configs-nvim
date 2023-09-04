-- Metadata
-- languages: go
-- url: https://github.com/dominikh/go-tools/tree/master/cmd/staticcheck

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'staticcheck'
local command = string.format('%s -f text ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %m' },
  rootMarkers = {},
}
