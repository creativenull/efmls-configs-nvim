-- Metadata
-- languages: slim
-- url: https://github.com/sds/slim-lint

local fs = require('efmls-configs.fs')

local linter = 'slim-lint'
local command = string.format('%s --stdin-file-path ${INPUT}', fs.executable(linter, fs.Scope.BUNDLE))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%f:%l [%t] %m' },
  rootMarkers = {},
}
