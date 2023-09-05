-- Metadata
-- languages: c,c++
-- url: https://github.com/google/styleguide/tree/gh-pages/cpplint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'cpplint'
local command = string.format('%s "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l: %m' },
  rootMarkers = {},
}
