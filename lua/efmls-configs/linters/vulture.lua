-- Metadata
-- languages: python
-- url: https://github.com/jendrikseipp/vulture

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'vulture'
local command = string.format('%s ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l: %m' },
  rootMarkers = {},
}
