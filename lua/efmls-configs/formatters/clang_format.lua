-- Metadata
-- languages: c,c++
-- url: https://clang.llvm.org/docs/ClangFormat.html

local fs = require('efmls-configs.fs')

local formatter = 'clang-format'
local command = string.format("%s -", fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
