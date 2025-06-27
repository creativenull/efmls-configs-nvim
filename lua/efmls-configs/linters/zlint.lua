-- Metadata
-- languages: zig
-- url: https://github.com/DonIsaac/zlint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'zlint'
local command = string.format('echo "${INPUT}" | %s --format github -S', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = false,
  lintFormats = {
    '::%tarning file=%f,line=%l,col=%c,title=%m',
    '::%trror file=%f,line=%l,col=%c,title=%m',
  },
  rootMarkers = { 'zlint.json' },
}
