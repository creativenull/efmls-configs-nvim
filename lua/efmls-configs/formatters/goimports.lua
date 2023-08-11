-- Metadata
-- languages: go
-- url: https://godoc.org/golang.org/x/tools/cmd/goimports

local fs = require('efmls-configs.fs')

local formatter = 'goimports'
local command = string.format('%s', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
