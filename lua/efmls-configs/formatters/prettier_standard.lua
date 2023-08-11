-- Metadata
-- languages: javascript,typescript
-- url: https://github.com/sheerun/prettier-standard

local fs = require('efmls-configs.fs')

local formatter = 'prettier-standard'
local command = string.format('%s --stdin', fs.executable(formatter, fs.Scope.NODE))

return {
  formatCommand = command,
  formatStdin = true,
}
