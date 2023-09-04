-- Metadata
-- languages: json
-- url: https://jqlang.github.io/jq/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'jq'
local command = string.format('%s', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintOffset = 1,
  lintFormats = {
    '%m at line %l, column %c',
  },
}
