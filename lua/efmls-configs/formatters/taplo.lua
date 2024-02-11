-- Metadata
-- languages: toml
-- url: https://github.com/tamasfe/taplo

local fs = require('efmls-configs.fs')

local formatter = 'taplo'
local args = 'format -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
}
