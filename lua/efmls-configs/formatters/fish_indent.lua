-- Metadata
-- languages: fish
-- url: https://fishshell.com/docs/current/cmds/fish_indent.html

local fs = require('efmls-configs.fs')
local formatter = fs.executable('fish_indent')
return {
  formatCommand = formatter,
  formatStdin = true,
}
