-- Metadata
-- languages: cmake
-- url: https://github.com/cheshirekow/cmake_format

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'cmake-lint'
local command = string.format('%s "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l,%c: [%s] %m' },
  rootMarkers = {},
}
