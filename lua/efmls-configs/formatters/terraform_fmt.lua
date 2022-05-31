local fs = require('efmls-configs.fs')

local formatter = 'terraform'
local args = 'fmt -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
}
