-- Metadata
-- languages: javascript,typescript
-- url: https://github.com/sindresorhus/xo

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'xo'
local bin = fs.executable(linter, fs.Scope.NODE)
local args = '--reporter visualstudio --stdin-filename "${INPUT}" --stdin'
local command = string.format('%s %s', bin, args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%f(%l,%c): %trror %m', '%f(%l,%c): %tarning %m' },
  rootMarkers = {
    '.xo-config',
    '.xo-config.json',
    '.xo-config.js',
    '.xo.config.js',
    '.xo-config.cjs',
    '.xo.config.cjs',
    'package.json',
  },
}
