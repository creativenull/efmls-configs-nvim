-- Metadata
-- languages: python
-- url: https://github.com/hhatto/autopep8

local fs = require('efmls-configs.fs')

local formatter = 'autopep8'
local command = string.format('%s -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
