-- Metadata
-- languages: tex
-- url: https://github.com/cmhughes/latexindent.pl

local fs = require('efmls-configs.fs')

local formatter = 'latexindent'
local command = string.format('%s -', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
