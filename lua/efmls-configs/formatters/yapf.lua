-- Metadata
-- languages: python
-- url: https://github.com/google/yapf

local fs = require('efmls-configs.fs')

local formatter = 'yapf'
local command = string.format('%s', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { '.style.yapf', 'setup.cfg', 'pyproject.toml' },
}
