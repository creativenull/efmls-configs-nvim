-- Metadata
-- languages: gitcommit
-- url: https://jorisroovers.com/gitlint/latest/

local fs = require('efmls-configs.fs')

local linter = 'gitlint'
local command = string.format('%s', fs.executable(linter))

return {
  lintCommand = command,
  lintStdin = true,
  lintFormats = {
    '%l: %m: "%r"',
    '%l: %m',
  },
}
