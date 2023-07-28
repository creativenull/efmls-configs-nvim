local fs = require('efmls-configs.fs')
local formatter = fs.executable('nixfmt')
return {
  formatCommand = formatter,
  formatStdin = true,
  rootMarkers = {
    'flake.nix',
    'shell.nix',
    'default.nix',
  },
}
