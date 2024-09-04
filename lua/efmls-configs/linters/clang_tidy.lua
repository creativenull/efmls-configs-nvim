-- Metadata
-- languages: c,c++
-- url: http://clang.llvm.org/extra/clang-tidy/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'clang-tidy'
local command = string.format('%s "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintIgnoreExitCode = true,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' },
  rootMarkers = {},
}
