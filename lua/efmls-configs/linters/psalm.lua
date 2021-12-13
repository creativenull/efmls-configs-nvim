local fs = require('efmls-configs.fs')

local linter = 'psalm'
local args = '--no-progress --no-cache --output-format=emacs ${INPUT}'
local command = string.format('%s %s', fs.executable(linter, fs.Scope.COMPOSER), args)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c:%trror - %m on %.%#', '%.%#:%l:%c:%tarning - %m on %.%#' },
  rootMarkers = { 'psalm.xml', 'composer.json' },
}
