local M = {}

---@alias ScopeType
---| 'BUNDLE'
---| 'COMPOSER'
---| 'NODE'

M.Scope = {
  NODE = 'NODE',
  COMPOSER = 'COMPOSER',
  BUNDLE = 'BUNDLE',
}

local FilepathByScope = {
  NODE = 'node_modules/.bin',
  COMPOSER = 'vendor/bin',
  BUNDLE = 'vendor/bundle',
}

---Add error to :checkhealth issues
---@param name string
---@return nil
local add_checkhealth_error = function(name)
  local errmsg = string.format('%q: no executable found, check |efmls-configs-issues| for help', name)
  table.insert(_G.efmls_healthcheck, errmsg)
end

---Get the full path to project local executable
---@param name string
---@param context ScopeType
---@return string
local get_local_exec = function(name, context)
  local local_bin_path = FilepathByScope[context]
  local current_working_dir = vim.loop.cwd()
  local binpath = string.format('%s/%s/%s', current_working_dir, local_bin_path, name)

  if vim.fn.filereadable(binpath) == 0 then
    add_checkhealth_error(name)
  end

  return binpath
end

---Get the full path to project local executable
---@param name string
---@return string
local get_global_exec = function(name)
  if vim.fn.executable(name) == 1 then
    return vim.fn.exepath(name)
  else
    add_checkhealth_error(name)
    return name
  end
end

---Get the full path to executable, search for project installed
---binary, else search for globally install binary. If no executable
---found, then add to the health check, but post no error
---@param name string
---@param context ScopeType
M.executable = function(name, context)
  -- Track linter/formatter status
  if _G.efmls_healthcheck == nil then
    _G.efmls_healthcheck = {}
  end

  if context ~= nil then
    local local_binpath = get_local_exec(name, context)

    if local_binpath == '' then
      return get_global_exec(name)
    end

    return local_binpath
  else
    return get_global_exec(name)
  end
end


return M
