local M = {}

---Lint source text
---@param suffix string
---@return string
M.sourceText = function(suffix)
  return string.format('efm/%s', suffix)
end

---Concatenate two tables
---@param tbl1 table
---@param tbl2 table
---@return table
M.concat = function(tbl1, tbl2)
  local result = {}
  for i = 1, #tbl1 do
    result[i] = tbl1[i]
  end
  for i = 1, #tbl2 do
    result[#tbl1 + i] = tbl2[i]
  end
  return result
end

return M
