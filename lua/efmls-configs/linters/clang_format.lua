-- Metadata
-- languages: c,c++
-- url: https://clang.llvm.org/docs/ClangFormat.html

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'clang-format'
local command = string.format('%s --dry-run "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = false,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' },
  rootMarkers = {},
}
