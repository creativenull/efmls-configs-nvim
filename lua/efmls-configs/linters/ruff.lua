-- Metadata
-- languages: python
-- url: https://github.com/astral-sh/ruff

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'ruff'
local command =
  string.format('%s check --quiet --output-format github --stdin-filename "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = {
    '::%trror title=Ruff%.%#,file=%f,line=%l,col=%c,%.%#: %m',
    '::%tarning title=Ruff%.%#,file=%f,line=%l,col=%c,%.%#: %m',
  },
  lintSeverity = 2,
  rootMarkers = {
    'ruff.toml',
    'pyproject.toml',
    'setup.cfg',
  },
}
