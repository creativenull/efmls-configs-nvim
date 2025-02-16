-- Metadata
-- languages: sql
-- url: https://github.com/quarylabs/sqruff

local fs = require('efmls-configs.fs')

local formatter = 'sqruff'
local args = 'fix -'
local command = string.format('%s %s ${INPUT}', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { '.sqruff' },
}
