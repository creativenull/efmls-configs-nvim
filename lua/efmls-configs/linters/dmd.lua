-- Metadata
-- languages: d
-- url: https://dlang.org/dmd-linux.html

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'dmd'
local command = string.format('%s -color=off -vcolumns -o- -wi -c -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#(%l,%c): %trror: %m', '%.%#(%l,%c): %tarning: %m' },
  rootMarkers = {},
}
