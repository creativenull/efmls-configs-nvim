local fs = require('efmls-configs.fs')

local linter = 'dartanalyzer'
local command = string.format('%s --format machine ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = {
    '%tRROR|%.%#|%.%#|%f|%l|%c|%.%#|%m',
    '%tARNING|%.%#|%.%#|%f|%l|%c|%.%#|%m',
    '%tNFO|%.%#|%.%#|%f|%l|%c|%.%#|%m',
  },
  rootMarkers = {},
}
