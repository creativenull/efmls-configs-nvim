-- Metadata
-- languages: javascript,typescript
-- url: https://github.com/sindresorhus/xo

local fs = require('efmls-configs.fs')

local linter = 'xo'
local command = string.format('%s --reporter visualstudio --stdin', fs.executable(linter, fs.Scope.NODE))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '<text>(%l,%c): %trror %m', '<text>(%l,%c): %tarning %m' },
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
