-- Metadata
-- languages: typst
-- url: https://github.com/Enter-tainer/typstyle

local fs = require('efmls-configs.fs')

local formatter = fs.executable('typstyle')
local command = fs.executable(formatter)
return {
  formatCommand = command,
  formatStdin = true,
}
