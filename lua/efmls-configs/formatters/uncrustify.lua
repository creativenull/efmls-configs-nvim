-- Metadata
-- languages: c,c++,c#,d,java,objective-c,objective-c++,pawn,vala
-- url: https://github.com/uncrustify/uncrustify

local fs = require('efmls-configs.fs')

local formatter = 'uncrustify'
local command = string.format('%s -q ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = false,
}
