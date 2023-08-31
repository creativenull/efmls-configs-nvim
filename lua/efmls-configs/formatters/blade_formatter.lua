-- Metadata
-- languages: blade
-- url: https://github.com/shufo/blade-formatter

local fs = require('efmls-configs.fs')

local formatter = 'blade-formatter'
local command = string.format('%s ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = false,
}
