-- Metadata
-- languages: rust
-- url: https://github.com/rust-lang/rustfmt

local utils = require('efmls-configs.utils')
local fs = require('efmls-configs.fs')
local formatter = fs.executable('rustfmt')
local command = string.format('%s --emit=stdout', formatter)

-- Read the rust edition from Cargo.toml from the project directory
local cargo_path = utils.findFileInProject('Cargo.toml')
if cargo_path then
  local cargo_contents = utils.readFileContents(cargo_path)
  if cargo_contents then
    for _, line in ipairs(cargo_contents) do
      local edition = line:match([[^edition%s*=%s*%"(%d+)%"]])
      if edition then
        command = string.format('%s --edition=%s', command, edition)
        break
      end
    end
  end
end

return {
  formatCommand = command,
  formatStdin = true,
}
