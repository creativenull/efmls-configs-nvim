-- Metadata
-- languages: dart
-- url: https://github.com/dart-lang/sdk/tree/master/pkg/analyzer_cli

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'dartanalyzer'
local command = string.format('%s --format machine "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = {
    '%tRROR|%.%#|%.%#|%f|%l|%c|%.%#|%m',
    '%tARNING|%.%#|%.%#|%f|%l|%c|%.%#|%m',
    '%tNFO|%.%#|%.%#|%f|%l|%c|%.%#|%m',
  },
  rootMarkers = {},
}
