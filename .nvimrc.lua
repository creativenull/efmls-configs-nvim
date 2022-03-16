-- Powered by projectlocal-vim
-- https://github.com/creativenull/projectlocal-vim
local ok, efmls = pcall(require, 'efmls-configs')
if ok then
  efmls.setup({
    lua = {
      linter = require('efmls-configs.linters.luacheck'),
      formatter = require('efmls-configs.formatters.stylua'),
    },
  })
end
