local fs = require('efmls-configs.fs')

local linter = 'slither'
local bin = fs.executable(linter)
local args = "--sarif - ${INPUT}"
-- `solc` needs to be manually configured, see:
-- https://github.com/foundry-rs/foundry/issues/5429
-- https://github.com/crytic/slither/issues/2054
-- Also, `remappings.txt` needs to generated, e.g. `forge remappings > remappings.txt`
local command = string.format([[
cmd="%s %s"
(if [ -f remappings.txt ]; then
    $cmd --solc-remaps "$(tr '\n' ' ' < remappings.txt | xargs)"
else
    $cmd
fi) \
| jq -r '.runs[].results[]
| "\(.locations[].physicalLocation.artifactLocation.uri):\(
    .locations[].physicalLocation.region.startLine)-\(
    .locations[].physicalLocation.region.endLine): \(
    .message.text | gsub("\\s+";" ";"g"))"'
]], bin, args)

return {
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintSource = linter,
  -- Can only support linting on save, see:
  -- https://github.com/crytic/slither/issues/2057
  lintSeverity = 2,
  lintStdin = false,
  lintFormats = {
    '%f:%l-%e: %m',
  },
  rootMarkers = {
    "hardhat.config.js",
    "hardhat.config.ts",
    "foundry.toml",
    "remappings.txt",
    "truffle.js",
    "truffle-config.js",
    "ape-config.yaml",
  },
}
