-- Metadata
-- languages: misc
-- url: https://alexjs.com/

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'alex'
local command = string.format('%s --stdin', fs.executable(linter, fs.Scope.NODE))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%r%l:%c-%r %terror %m', '%r%l:%c-%r %tarning %m' },
  rootMarkers = { 'package.json' },
}
