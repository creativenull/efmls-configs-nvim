-- Metadata
-- languages: php
-- url: https://github.com/PHP-CS-Fixer/PHP-CS-Fixer

local fs = require('efmls-configs.fs')

local formatter = 'php-cs-fixer'
local args = "fix --no-ansi --using-cache=no --quiet '${INPUT}'"
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.COMPOSER), args)

return {
  formatCommand = command,
  formatStdin = false,
}
