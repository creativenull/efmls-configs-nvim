-- Metadata
-- languages: sh,bash
-- url: https://www.shellcheck.net/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'shellcheck'
local command = string.format('%s --color=never --format=gcc -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = true,
  lintFormats = { '-:%l:%c: %trror: %m', '-:%l:%c: %tarning: %m', '-:%l:%c: %tote: %m' },
  rootMarkers = {},
}
