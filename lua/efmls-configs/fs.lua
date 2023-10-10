local M = {}

-- TODO:
-- Add implementation to find the relevant linter/formatter binary
-- by traversing down each parent dir and match with FilepathByScope var
-- for the supported language package managers in Scope.

-- TODO:
-- Add python virtual env support (venv), automatically detect the venv
-- folder and then use the tools within it. Related with the todo above.

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

---Get local executable based on scope, if present.
---@param binary string
---@param context string
---@return string
local function local_executable(binary, context)
  local relativepath = FilepathByScope[context]
  local binarypath = string.format('%s/%s/%s', vim.loop.cwd(), relativepath, binary)

  if vim.fn.filereadable(binarypath) == 0 then
    error(string.format('%q: No local executable found, check |efmls-configs-issues| for help', binary), 0)
  end

  return binarypath
end

---Get global executable, if present.
---@param binary string
---@return string
local function global_executable(binary)
  if vim.fn.executable(binary) == 0 then
    error(string.format('%q: No global executable found, check |efmls-configs-issues| for help', binary), 0)
  end

  return vim.fn.exepath(binary)
end

---Get binary path, first from project-local then from
---global paths otherwise. Report to :checkhealth if
---found or not.
---@param name string
---@param context ScopeType
M.executable = function(name, context)
  -- Track linter/formatter status
  if _G._efmls == nil then
    _G._efmls = { healthcheck = { errors = {}, ok = {} } }
  end

  local local_ok, local_binarypath, global_ok, global_binarypath

  if context then
    -- get info from local path
    local_ok, local_binarypath = pcall(local_executable, name, context)
  end

  -- if that fails then get from global
  global_ok, global_binarypath = pcall(global_executable, name)

  if not global_ok and not local_ok then
    local reason = local_binarypath
    table.insert(_G._efmls.healthcheck.errors, reason)

    reason = global_binarypath
    table.insert(_G._efmls.healthcheck.errors, reason)

    return name
  end

  if local_ok then
    table.insert(_G._efmls.healthcheck.ok, string.format('%q: Found at %s', name, local_binarypath))

    return local_binarypath
  end

  table.insert(_G._efmls.healthcheck.ok, string.format('%q: Found at %s', name, global_binarypath))

  return global_binarypath
end

M.get_plugin_path = function()
  local matches = vim.tbl_filter(function(path)
    return string.match(path, 'efmls%-configs')
  end, vim.api.nvim_list_runtime_paths())

  return vim.tbl_isempty(matches) and '' or matches[1]
end

return M
