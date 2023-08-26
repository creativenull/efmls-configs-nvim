-- Metadata
-- languages: python
-- url: http://flake8.pycqa.org/en/latest/

local fs = require('efmls-configs.fs')

local linter = 'flake8'
local command = string.format('%s -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { 'stdin:%l:%c: %t%n %m' },
  rootMarkers = { 'setup.cfg', 'tox.ini', '.flake8' },
}
