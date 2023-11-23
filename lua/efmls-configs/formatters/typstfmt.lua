-- Metadata
-- languages: typst
-- url: https://github.com/astrale-sharp/typstfmt

local fs = require('efmls-configs.fs')

local formatter = fs.executable('typstfmt')
local command = string.format('%s -o -', fs.executable(formatter))
return {
  formatCommand = command,
  formatStdin = true,
}
