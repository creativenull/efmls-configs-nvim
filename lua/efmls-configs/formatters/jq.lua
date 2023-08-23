-- Metadata
-- languages: json
-- url: https://jqlang.github.io/jq/

local fs = require('efmls-configs.fs')

local formatter = 'jq'
local command = string.format('%s', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
