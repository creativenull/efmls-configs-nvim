-- Metadata
-- languages: sql
-- url: https://github.com/quarylabs/sqruff

local fs = require('efmls-configs.fs')

local formatter = 'sqruff'
local args = 'fix --force -'
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { '.sqruff' },
}
