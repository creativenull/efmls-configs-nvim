local fs = require('efmls-configs.fs')
local formatter = fs.executable('fish_indent')
return {
  formatCommand = formatter,
  formatStdin = true,
}
