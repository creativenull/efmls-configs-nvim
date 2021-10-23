local log = require('efmls-configs.logger')
local M = {}

-- Enums
local Scope = {
  NODE = 'node',
  COMPOSER = 'composer',
  BUNDLE = 'bundle',
}

-- Expose it for other modules to use
M.Scope = Scope

local FsScopePath = {
  NODE = 'node_modules/.bin',
  COMPOSER = 'vendor/bin',
  BUNDLE = 'vendor/bundle',
}

local get_exec_fullpath = function(bin, scope)
  local binpath = string.format('%s/%s/%s', vim.fn.getcwd(), scope, bin)
  if vim.fn.filereadable(binpath) == 1 then
    return binpath
  end

  return ''
end

-- Get the project scoped executable linter/formatter
--
-- @param bin
-- @param scope
-- @return string
local get_scoped_executable = function(bin, scope)
  if scope == Scope.NODE then
    return get_exec_fullpath(bin, FsScopePath.NODE)
  end

  if scope == Scope.COMPOSER then
    return get_exec_fullpath(bin, FsScopePath.COMPOSER)
  end

  if scope == Scope.BUNDLE then
    return get_exec_fullpath(bin, FsScopePath.BUNDLE)
  end

  return ''
end

-- Get the executable linter/formater depending on the scope, if provided
--
-- @param bin
-- @param scope
-- @return string
M.get_executable = function(bin, scope)
  local executable_bin = ''

  if scope ~= nil then
    executable_bin = get_scoped_executable(bin, scope)
  end

  if vim.fn.executable(bin) and executable_bin == '' then
    executable_bin = vim.fn.exepath(bin)
  end

  if executable_bin == '' then
    log.error(string.format('[efmls-configs] No executable found for %q', bin))
    return
  end

  return executable_bin
end

-- Get the project root relative to where nvim was opened,
-- this depends on if it finds it as a git project
-- ref: https://vi.stackexchange.com/questions/20605/find-project-root-relative-to-the-active-buffer
--
-- @return string
M.get_project_root = function()
  return vim.fn.finddir('.git/..', vim.fn.expand('%:p:h') .. ';')
end

return M
