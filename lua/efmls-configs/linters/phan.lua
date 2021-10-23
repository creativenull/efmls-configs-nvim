local fs = require('efmls-configs.fs')

local linter = 'phan'
local bin = fs.get_executable(linter, fs.Scope.COMPOSER)
local args = '--output-mode pylint ${INPUT}'
local cmd = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintCommand = cmd,
  lintStdin = true,
  lintFormats = { '%.%#:%l: [%t%.%#] %m (at column %c)' },
  rootMarkers = { '.phan/config.php', 'composer.json' },
}
