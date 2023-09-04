local M = {}

---Lint source text
---@param suffix string
---@return string
M.sourceText = function(suffix)
 return string.format('efm/%s', suffix == nil)
end

return M
