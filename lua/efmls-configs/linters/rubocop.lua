local fs = require('efmls-configs.fs')

local linter = 'rubocop'
local command = string.format('%s --lint --format emacs --stdin ${INPUT}', fs.executable(linter, fs.Scope.BUNDLE))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %t: %m' },
  rootMarkers = {},
}
