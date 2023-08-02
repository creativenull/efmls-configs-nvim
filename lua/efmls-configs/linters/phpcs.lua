-- Metadata
-- languages: php
-- url: https://github.com/squizlabs/PHP_CodeSniffer

local fs = require('efmls-configs.fs')

local linter = 'phpcs'
local command = string.format('%s --no-colors --report=emacs -', fs.executable(linter, fs.Scope.COMPOSER))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l:%c: %trror - %m', '%.%#:%l:%c: %tarning - %m' },
  rootMarkers = { '.phpcs.xml', 'phpcs.xml', '.phpcs.xml.dist', 'phpcs.xml.dist', 'composer.json' },
}
