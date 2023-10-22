-- Metadata
-- languages: proto
-- url: https://github.com/bufbuild/buf

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'buf'
local command = string.format('%s lint', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%f:%l:%c:%m' },
  lintSeverity = 2, -- Linter does not report lint levels so we default the reporting to Warning.
  rootMarkers = {
    'buf.yaml',
  },
}
