-- Metadata
-- languages: python,go,php,html
-- url: https://djlint.com/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'djlint'
local bin = fs.executable(linter)
local args = [[--linter-output-format 'I:{line}: {message}' --profile=django -]]
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintFormats = { '%t:%l:%c: %m' },
  lintStdin = true,
  lintIgnoreExitCode = true,
  lintDebounce = '1s',
}
