-- Metadata
-- languages: php
-- url: https://github.com/squizlabs/PHP_CodeSniffer

local fs = require('efmls-configs.fs')

local formatter = 'phpcbf'
local command = string.format('%s -', fs.executable(formatter, fs.Scope.COMPOSER))

return {
  formatCommand = command,
  formatStdin = true,
}
