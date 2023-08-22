-- Metadata
-- languages: cmake
-- url: https://github.com/BlankSpruce/gersemi

local fs = require('efmls-configs.fs')

local formatter = 'gersemi'
local command = string.format('%s -', fs.executable(formatter))

return {
  prefix = formatter,
  formatCommand = command,
  formatStdin = true,
}
