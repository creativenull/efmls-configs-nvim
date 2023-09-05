-- Metadata
-- languages: c,c++
-- url: https://gcc.gnu.org/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'gcc'
local args = { '-Wpedantic', '-Wall', '-Wextra', '-fno-diagnostics-color', '-fsyntax-only', '"${INPUT}"' }
local command = string.format('%s %s', fs.executable(linter), table.concat(args, ' '))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: %tarning: %m', '%.%#:%l:%c: %tnfo: %m' },
  rootMarkers = { 'Makefile' },
}
