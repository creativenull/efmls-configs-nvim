local fs = require('efmls-configs.fs')

local linter = 'php'
local command = string.format('%s -l', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%m in %.%# line %l' },
  rootMarkers = { 'composer.json' },
}
