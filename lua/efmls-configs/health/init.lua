local M = {}

local has_issues = function()
  return _G.efmls_healthcheck ~= nil and not vim.tbl_isempty(_G.efmls_healthcheck)
end

M.check = function()
  if has_issues() then
    for _, issue in pairs(_G.efmls_healthcheck) do
      vim.health.report_error(issue)
    end
  else
    vim.health.report_ok('All checks passed')
  end
end

return M
