-- Metadata
-- languages: clojure
-- url: https://github.com/candid82/joker

local fs = require('efmls-configs.fs')

local linter = 'joker'
local command = string.format('%s --lint -', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: Read %trror: %m', '%.%#:%l:%c: Parse %trror: %m', '%.%#:%l:%c: Parse %tarning: %m' },
  rootMarkers = { '.joker' },
}
