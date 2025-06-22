-- Metadata
-- languages: go
-- url: https://github.com/golangci/golangci-lint

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local outputFormat = '--out-format tab'
local ok, versionOutput = pcall(vim.fn.system, { 'golangci-lint', 'version' })

--- check if golangci-lint is version 2
if ok and string.match(versionOutput, 'version%s+v?(2%.[%d%.]+)') then
  outputFormat = '--output.tab.path=stdout'
end

local linter = 'golangci-lint'
local command = string.format('%s run --color never %s "${INPUT}"', fs.executable(linter), outputFormat)

return {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = command,
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c %m' },
  rootMarkers = {},
}
