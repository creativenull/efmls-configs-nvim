-- Metadata
-- languages: javascript,typescript,css,html
-- url: http://fecs.baidu.com/

local fs = require('efmls-configs.fs')

-- TODO:
-- This formatter leave it's tooling information
-- at the line. Check for workarounds, if possible.

local formatter = 'fecs'
local args = "format --silent --ignore --stream '${INPUT}'"
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
}
