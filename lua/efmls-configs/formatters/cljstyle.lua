-- Metadata
-- languages: clojure
-- url: https://github.com/greglook/cljstyle

local fs = require('efmls-configs.fs')

local formatter = 'cljstyle'
local command = string.format('%s pipe', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
