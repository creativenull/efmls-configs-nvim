-- Metadata
-- languages: markdown
-- url: https://mdformat.readthedocs.io/

local fs = require("efmls-configs.fs")

-- INFO 
-- by default, mdformat converts all numbers in numbered to "1". As this default
-- behavior is somewhat disruptive for many people, we disable it by passing the
-- `--number` flag

local formatter = "mdformat"
local args = "--number -" 
local command = string.format('%s %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
  rootMarkers = { ".mdformat.toml" },
}
