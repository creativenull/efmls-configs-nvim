local fs = require('efmls-configs.fs')

local linter = 'flake8'
local command = string.format('%s -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %t%.%# %m' },
  rootMarkers = { 'setup.cfg', 'tox.ini', '.flake8' },
}
