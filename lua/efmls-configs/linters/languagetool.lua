-- Metadata
-- languages: misc
-- url: https://languagetool.org/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'languagetool'
local command = string.format('%s -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#Line %l, column %c, Message: %m' },
  rootMarkers = {},
}
