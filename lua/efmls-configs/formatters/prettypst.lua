-- Metadata
-- languages: typst
-- url: https://github.com/antonWetzel/prettypst

local fs = require('efmls-configs.fs')

local formatter = fs.executable('prettypst')
local command = string.format('%s --use-std-in --use-std-out', fs.executable(formatter))
return {
  formatCommand = command,
  formatStdin = true,
}
