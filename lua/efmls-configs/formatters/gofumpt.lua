-- Metadata
-- languages: go
-- url: https://github.com/mvdan/gofumpt

local fs = require('efmls-configs.fs')
local formatter = fs.executable('gofumpt')

return {
  formatCommand = formatter,
  formatStdin = true,
}
