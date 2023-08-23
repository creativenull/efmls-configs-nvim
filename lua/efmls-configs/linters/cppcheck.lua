-- Metadata
-- languages: c,c++
-- url: http://cppcheck.sourceforge.net

local fs = require('efmls-configs.fs')

local linter = 'cppcheck'
local command = string.format('%s --enable=warning ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: %tarning: %m', '%.%#:%l:%c: %tote: %m' },
  rootMarkers = {},
}
