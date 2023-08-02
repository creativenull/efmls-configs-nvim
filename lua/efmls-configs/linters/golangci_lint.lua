-- Metadata
-- languages: go
-- url: https://github.com/golangci/golangci-lint

local fs = require('efmls-configs.fs')

local linter = 'golangci-lint'
local command = string.format('%s run --color never --out-format tab ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c %m' },
  rootMarkers = {},
}
