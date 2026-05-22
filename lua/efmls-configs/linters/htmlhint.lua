-- Metadata
-- languages: html
-- url: https://htmlhint.com

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'htmlhint'
local command = string.format('%s stdin -f compact -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { 'stdin: line %l, col %c, %trror - %m', 'stdin: line %l, col %c, %tarning - %m' },
  rootMarkers = {},
}
