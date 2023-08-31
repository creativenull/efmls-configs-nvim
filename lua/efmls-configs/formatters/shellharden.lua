-- Metadata
-- languages: sh
-- url: https://github.com/anordal/shellharden

local fs = require('efmls-configs.fs')

local formatter = 'shellharden'
local args = "--transform ''" -- '' = stdin usage
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
}
