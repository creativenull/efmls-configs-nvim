-- Metadata
-- languages: haskell
-- url: https://github.com/fourmolu/fourmolu

local fs = require('efmls-configs.fs')

local formatter = 'fourmolu'
local command = string.format('%s --stdin-input-file ${INPUT} -', fs.executable(formatter))

return {
  prefix = formatter,
  formatCommand = command,
  formatStdin = true,
}
