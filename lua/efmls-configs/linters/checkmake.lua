-- Metadata
-- languages: make
-- url: https://github.com/mrtazz/checkmake

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'checkmake'
local command =
  string.format('%s --format=\'{{.LineNumber}}:{{.Violation}} ({{.Rule}})\n\' "${INPUT}"', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%l:%m' },
  rootMarkers = {},
}
