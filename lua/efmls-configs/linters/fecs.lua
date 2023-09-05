-- Metadata
-- languages: javascript
-- url: http://fecs.baidu.com/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'fecs'
local bin = fs.executable(linter, fs.Scope.NODE)
local args = 'check --color=false --stream "${INPUT}"'
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = {
    'fecs [%tRROR] → line %l, col %c: %m',
    'fecs [%tARNING] → line %l, col %c: %m',
    'fecs [%tNFO] → line %l, col %c: %m',
  },
  rootMarkers = {},
}
