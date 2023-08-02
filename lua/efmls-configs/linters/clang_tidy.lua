-- Metadata
-- languages: c,c++
-- url: http://clang.llvm.org/extra/clang-tidy/

local fs = require('efmls-configs.fs')

local linter = 'clang-tidy'
local command = string.format('%s ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' },
  rootMarkers = {},
}
