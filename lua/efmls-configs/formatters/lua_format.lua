-- Metadata
-- languages: lua
-- url: https://github.com/Koihik/LuaFormatter

local fs = require('efmls-configs.fs')

local formatter = 'lua-format'
local command = string.format('%s ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
