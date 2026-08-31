-- Metadata
-- languages: julia
-- url: https://github.com/fredrikekre/Runic.jl

local fs = require('efmls-configs.fs')

local formatter = 'runic'
local args = '--stdin-filename="${INPUT}" --output=-'
local command = string.format('%s %s', fs.executable(formatter, fs.Scope.NODE), args)

return {
  formatCommand = command,
  formatStdin = true,
}
