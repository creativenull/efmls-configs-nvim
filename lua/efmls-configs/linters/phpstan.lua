local fs = require('efmls-configs.fs')

local linter = 'phpstan'
local bin = fs.get_executable(linter, fs.Scope.COMPOSER)
local args = 'analyse --no-progress --no-ansi --error-format=raw ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%m' },
  rootMarkers = { 'phpstan.neon', 'phpstan.neon.dist', 'composer.json' },
}
