-- Metadata
-- languages: ruby
-- url: https://github.com/seattlerb/debride

local fs = require('efmls-configs.fs')

local linter = 'debride'
local command = string.format('%s "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormat = { '%.%#:%l :: %m' },
  rootMarkers = {},
}
