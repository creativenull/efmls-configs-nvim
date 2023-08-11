-- Metadata
-- languages: d
-- url: https://github.com/dlang-community/dfmt

local fs = require('efmls-configs.fs')

local formatter = 'dfmt'
local command = string.format('%s -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
