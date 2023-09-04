-- Metadata
-- languages: php
-- url: https://github.com/phan/phan

local fs = require('efmls-configs.fs')

local linter = 'phan'
local command = string.format('%s --output-mode pylint "${INPUT}"', fs.executable(linter, fs.Scope.COMPOSER))

return {
  prefix = linter,
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l: [%t%.%#] %m (at column %c)' },
  rootMarkers = { '.phan/config.php', 'composer.json' },
}
