-- Metadata
-- languages: json
-- url: https://github.com/rhysd/fixjson

local fs = require('efmls-configs.fs')
local formatter = fs.executable('fixjson')

return {
  formatCommand = formatter,
  formatStdin = true,
}
