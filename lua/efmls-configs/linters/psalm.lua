local fs = require('efmls-configs.fs')

local linter = 'psalm'
local bin = fs.get_executable(linter, fs.Scope.COMPOSER)
local args = '--no-progress --no-cache --output-format=emacs ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c:%trror - %m on %.%#', '%.%#:%l:%c:%tarning - %m on %.%#' },
  rootMarkers = { 'psalm.xml', 'composer.json' },
}
