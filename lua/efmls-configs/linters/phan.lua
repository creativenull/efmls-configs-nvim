-- Metadata
-- languages: php
-- url: https://github.com/phan/phan

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'phan'
local command = string.format('%s --output-mode pylint "${INPUT}"', fs.executable(linter, fs.Scope.COMPOSER))

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = true,
  lintFormats = { '%.%#:%l: [%t%.%#] %m (at column %c)' },
  rootMarkers = { '.phan/config.php', 'composer.json' },
}
