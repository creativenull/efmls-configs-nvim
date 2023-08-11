-- Metadata
-- languages: c,c++
-- url: http://clang.llvm.org/extra/clang-tidy/

local fs = require('efmls-configs.fs')

local formatter = 'clang-tidy'
local command = string.format('%s -fix ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = false,
}
