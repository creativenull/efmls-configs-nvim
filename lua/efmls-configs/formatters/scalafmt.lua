-- Metadata
-- languages: scala
-- url: https://scalameta.org/scalafmt/

local fs = require('efmls-configs.fs')

local formatter = 'scalafmt'
local args = '--stdin'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCanRange = true,
  formatCommand = command,
  formatStdin = true,
}
