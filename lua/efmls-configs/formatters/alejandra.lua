-- Metadata
-- languages: nix
-- url: https://github.com/serokell/nixfmt

local fs = require('efmls-configs.fs')
local formatter = fs.executable('alejandra')
return {
  formatCommand = formatter,
  formatStdin = true,
  -- rootMarkers = {
  --   'flake.nix',
  --   'shell.nix',
  --   'default.nix',
  -- },
}
