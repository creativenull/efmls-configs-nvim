-- Metadata
-- languages: misc
-- url: http://redpen.cc/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'redpen'
local command = string.format('%s ${FILENAME}', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l: %m' },
  rootMarkers = {},
}
