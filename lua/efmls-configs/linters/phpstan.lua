-- Metadata
-- languages: php
-- url: https://github.com/phpstan/phpstan

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'phpstan'
local args = 'analyse --no-progress --no-ansi --error-format=raw "${INPUT}"'
local command = string.format('%s %s', fs.executable(linter, fs.Scope.COMPOSER), args)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%m' },
  rootMarkers = { 'phpstan.neon', 'phpstan.neon.dist', 'composer.json' },
}
