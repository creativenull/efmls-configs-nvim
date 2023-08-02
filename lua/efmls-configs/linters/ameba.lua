-- Metadata
-- languages: crystal
-- url: https://github.com/veelenga/ameba

local fs = require('efmls-configs.fs')

local linter = 'ameba'
local command = string.format('%s --no-color --format flycheck ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintIgnoreExitCode = true,
  lintFormats = { '%.%#:%l:%c: %t: %m' },
  rootMarkers = { '.ameba.yml' },
}
