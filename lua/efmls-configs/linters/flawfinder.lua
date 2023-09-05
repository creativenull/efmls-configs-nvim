-- Metadata
-- languages: c
-- url: https://www.dwheeler.com/flawfinder/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'flawfinder'
local command = string.format('%s --singleline --dataonly "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c:%.%#[%n] %m' },
  rootMarkers = {},
}
