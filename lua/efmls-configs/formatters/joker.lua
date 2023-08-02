-- Metadata
-- languages: clojure
-- url: https://github.com/candid82/joker

local fs = require('efmls-configs.fs')

local formatter = 'joker'
local command = string.format('%s --format ${INPUT}', fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = true,
}
