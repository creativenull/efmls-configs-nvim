-- Metadata
-- languages: solidity
-- url: https://github.com/protofire/solhint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'solhint'
local bin = fs.executable(linter, fs.Scope.NODE)
local args = '--formatter unix stdin'
local command = string.format('%s %s | tr -s " "', bin, args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintSource = linter,
  lintStdin = true,
  lintFormats = {
    '%*[ ]%l:%c%*[ ]%trror%*[ ]%m',
    '%*[ ]%l:%c%*[ ]%tarning%*[ ]%m',
    '%f:%l:%c: %m [%trror/%r]',
    '%f:%l:%c: %m [%tarning/%r]',
  },
  rootMarkers = { '.solhint.json' },
}
