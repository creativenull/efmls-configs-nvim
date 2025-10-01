local M = {}

---Lint source text
---@param suffix string
---@return string
M.sourceText = function(suffix)
  return string.format('efm/%s', suffix)
end

---Check if a file exists in the current directory or any parent directory
---@param filename string
---@return string|nil
M.findFileInProject = function(filename)
  -- Get current working directory
  local uv = vim.loop or vim.uv
  local cwd = uv.cwd()
  if not cwd then return nil end

  -- Find file in current directory or parent directories
  local current_dir = cwd
  while current_dir do
    local file_path = current_dir .. '/' .. filename
    local stat = uv.fs_stat(file_path)

    if stat and stat.type == 'file' then
      return file_path
    end

    -- Move to parent directory
    local parent = vim.fn.fnamemodify(current_dir, ':h')
    if parent == current_dir then
      break
    end
    current_dir = parent
  end

  return nil
end

---Read file contents
---@param filepath string
---@return string[]|nil
M.readFileContents = function(filepath)
  -- Read the file contents
  local lines = vim.fn.readfile(filepath)
  if not lines then return nil end

  return lines
end

return M
