local fs = require('efmls-configs.fs')

local linter = 'dmd'
local command = string.format('%s -color=off -vcolumns -o- -wi -c -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#(%l,%c): %trror: %m', '%.%#(%l,%c): %tarning: %m' },
  rootMarkers = {},
}
