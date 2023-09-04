-- Metadata
-- languages: fish
-- url: https://linux.die.net/man/1/fish

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'fish'
local command = string.format('%s --no-execute "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintFormats = { '%.%#(line %l): %m' },
}
