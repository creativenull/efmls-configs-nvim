local fs = require('efmls-configs.fs')

local linter = 'phpcs'
local bin = fs.get_executable(linter, fs.Scope.COMPOSER)
local args = '--no-colors --report=emacs -'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %trror - %m', '%.%#:%l:%c: %tarning - %m' },
  rootMarkers = { '.phpcs.xml', 'phpcs.xml', '.phpcs.xml.dist', 'phpcs.xml.dist', 'composer.json' },
}
