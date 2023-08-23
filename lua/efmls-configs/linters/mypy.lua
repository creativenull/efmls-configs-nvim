-- Metadata
-- languages: python
-- url: https://mypy-lang.org/

local fs = require('efmls-configs.fs')

local linter = 'mypy'
local command = string.format('%s --show-column-numbers', fs.executable(linter))

return {
  lintCommand = command,
  lintStdin = false,
  lintFormats = {
    '%f:%l:%c: %trror: %m',
    '%f:%l:%c: %tarning: %m',
    '%f:%l:%c: %tote: %m',
  },
  rootMarkers = {
    'mypy.ini',
    'pyproject.toml',
    'setup.cfg',
  },
}
