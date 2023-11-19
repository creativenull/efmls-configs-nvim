-- Metadata
-- languages: fennel
-- url: https://git.sr.ht/~technomancy/fnlfmt

local fs = require('efmls-configs.fs')

local formatter = 'fnlfmt'
local command = string.format('%s -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
