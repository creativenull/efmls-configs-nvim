-- Metadata
-- languages: python
-- url: https://github.com/astral-sh/ruff

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'ruff'
local command = string.format('%s check --stdin-filename "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %t%n %m' },
  lintSeverity = 4,
  rootMarkers = {
    'ruff.toml',
    'pyproject.toml',
    'setup.cfg',
  },
}
