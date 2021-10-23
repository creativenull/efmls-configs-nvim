local lspconfig = require('lspconfig')
local M = {}

-- Default efm-langserver LSP options
local efmls_setup = {
  root_dir = lspconfig.util.root_pattern('.git'),
  init_options = { documentFormatting = true },
  settings = {
    rootMarkers = { '.git' },
    languages = {},
  },
}

-- Insert the relevant linter/formatter into the source provided
--
-- @param source table
-- @param tools table
local insert_settings = function(source, tools)
  if vim.tbl_islist(tools) then
    for _, tool in pairs(tools) do
      table.insert(source, tool)
    end
  else
    table.insert(source, tools)
  end
end

-- Initalize efm-langserver LSP options for user
--
-- @param user_efmls_opts table
M.init = function(user_efmls_opts)
  if user_efmls_opts ~= nil or user_efmls_opts ~= {} then
    efmls_setup = vim.tbl_extend('force', efmls_setup, user_efmls_opts)
  end
end

-- Setup efm-langserver settings for each filetype provided
--
-- @param filetypes table
M.setup = function(filetypes)
  efmls_setup.filetypes = vim.tbl_keys(filetypes)

  for ft, features in pairs(filetypes) do
    efmls_setup.settings.languages[ft] = {}

    if features.linter ~= nil then
      insert_settings(efmls_setup.settings.languages[ft], features.linter)
    end

    if features.formatter ~= nil then
      insert_settings(efmls_setup.settings.languages[ft], features.formatter)
    end
  end

  lspconfig.efm.setup(efmls_setup)
end

return M
