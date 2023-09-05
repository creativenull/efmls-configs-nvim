-- Metadata
-- languages: gitcommit
-- url: https://jorisroovers.com/gitlint/latest/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'gitlint'
local command = string.format('%s', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = {
    '%l: %m: "%r"',
    '%l: %m',
  },
}
