-- Metadata
-- languages: ruby
-- url: https://github.com/bbatsov/rubocop

local sourceText = require('efmls-configs.utils').sourceText
local fs = require('efmls-configs.fs')

local linter = 'rubocop'

local function commandBuilder(args)
  args = args or '--lint --format emacs --stdin "${INPUT}"'

  return string.format('%s %s', fs.executable(linter, fs.Scope.BUNDLE), args)
end

local data = {
  prefix = linter,
  lintSource = sourceText(linter),
  lintCommand = commandBuilder(),
  lintStdin = true,
  lintFormats = { '%f:%l:%c: %t: %m' },
  rootMarkers = {},
}

return setmetatable(data, {
  __call = function(t, opts)
    if opts.args ~= nil then
      t.lintCommand = commandBuilder(opts.args)
    end

    return vim.tbl_extend('force', t, opts.override or {})
  end,
})
