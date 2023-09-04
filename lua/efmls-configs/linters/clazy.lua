-- Metadata
-- languages: c++
-- url: https://github.com/KDE/clazy

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'clazy'
local args = {
  '--analyze',
  '--extra-arg=-Xclang',
  '--extra-arg=-analyzer-output=text',
  '--extra-arg=-fno-color-diagnostics',
  '"${INPUT}"',
}
local command = string.format('%s %s', fs.executable(linter), table.concat(args, ' '))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: fatal %trror: %m', '%.%#:%l:%c: %tarning: %m' },
  rootMarkers = {},
}
