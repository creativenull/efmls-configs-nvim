-- Metadata
-- languages: proto
-- url: https://github.com/bufbuild/buf

local fs = require('efmls-configs.fs')

local formatter = 'buf'
local command = string.format("%s format '${INPUT}'", fs.executable(formatter))

return {
  formatCommand = command,
  formatStdin = false,
  rootMarkers = {
    'buf.yaml',
  },
}
