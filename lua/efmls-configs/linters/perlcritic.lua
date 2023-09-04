local fs = require('efmls-configs.fs')

local linter = 'perlcritic'
local command = string.format('%s --nocolor --verbose "%s" "${INPUT}"', fs.executable(linter), [[%l:%c:%s %m [%p]\n]])

return {
  prefix = linter,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { '%l:%c:%t %m' },
  lintCategoryMap = {
    ['1'] = 'N',
    ['2'] = 'N',
    ['3'] = 'I',
    ['4'] = 'W',
    ['5'] = 'E',
  },
  rootMarkers = { '.git', '.perlcriticrc' },
}
