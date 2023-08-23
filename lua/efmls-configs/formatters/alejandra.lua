-- Metadata
-- languages: nix
-- url: https://github.com/kamadorueda/alejandra

local fs = require('efmls-configs.fs')

local formatter = fs.executable('alejandra')
local command = string.format('%s -', fs.executable(formatter))
return {
  formatCommand = command,
  formatStdin = true,
}
