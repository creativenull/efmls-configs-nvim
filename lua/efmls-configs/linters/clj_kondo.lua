-- Metadata
-- languages: clojure
-- url: https://github.com/borkdude/clj-kondo

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'clj-kondo'
local command = string.format('%s --lint -', fs.executable(linter))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %trror: %m', '%.%#:%l:%c: %tarning: %m', '%.%#:%l:%c: %tote: %m' },
  rootMarkers = { '.clj-kondo/config.edn' },
}
