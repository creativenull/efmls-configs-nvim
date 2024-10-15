-- Metadata
-- languages: python,go,php,html
-- url: https://djlint.com/

local fs = require('efmls-configs.fs')

local formatter = 'djlint'
local args = '--reformat -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = {
    '.djlintrc',
    'pyproject.toml',
  },
}
