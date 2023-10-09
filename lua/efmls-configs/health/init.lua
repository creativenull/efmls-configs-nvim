local health

-- Keep support for nvim 0.6/0.7 but use new vim.health for nvim >= 0.8
if vim.fn.has('nvim-0.8') == 1 then
  health = vim.health
else
  health = require('health')
end

local M = {}

local function has_errors()
  return _G._efmls and not vim.tbl_isempty(_G._efmls.healthcheck.errors)
end

local function has_ok()
  return _G._efmls and not vim.tbl_isempty(_G._efmls.healthcheck.ok)
end

function M.check()
  if has_errors() then
    for _, err in pairs(_G._efmls.healthcheck.errors) do
      health.report_error(err)
    end
  end

  if has_ok() then
    for _, ok in pairs(_G._efmls.healthcheck.ok) do
      health.report_ok(ok)
    end
  end
end

return M
