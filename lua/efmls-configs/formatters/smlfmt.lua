-- Metadata
-- languages: sml
-- url: https://github.com/shwestrick/smlfmt

local fs = require('efmls-configs.fs')

local formatter = 'smlfmt'
local command = fs.executable(formatter)

return {
  formatCommand = command,
  formatStdin = true,
}
