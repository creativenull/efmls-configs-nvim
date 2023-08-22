-- Metadata
-- languages: c,c++
-- url: http://cppcheck.sourceforge.net

local fs = require('efmls-configs.fs')

local linter = 'cppcheck'
local command = string.format(
  '%s --quiet --force --enable=warning,style,performance,portability --error-exitcode=1  ${INPUT}',
  fs.executable(linter)
)

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m' },
  rootMarkers = { 'CmakeLists.txt', 'compile_commands.json', '.git' },
}
