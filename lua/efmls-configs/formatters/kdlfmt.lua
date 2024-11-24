-- Metadata
-- languages: kdl
-- url: https://github.com/hougesen/kdlfmt

local fs = require('efmls-configs.fs')

local formatter = 'kdlfmt'
local args = 'format -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
}
