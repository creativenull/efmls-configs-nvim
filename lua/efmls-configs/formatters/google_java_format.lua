-- Metadata
-- languages: java
-- url: https://github.com/google/google-java-format

local fs = require('efmls-configs.fs')

local formatter = 'google-java-format'


local command = fs.executable("google-java-format")
    .. " --aosp" -- Use AOSP style instead of Google Style (4-space indentation).
    .. " $(echo -n ${--useless:rowStart} ${--useless:rowEnd}"
    .. " | xargs -n4 -r sh -c 'echo"
    .. " --skip-sorting-imports" -- Do not fix the import order.
    .. " --skip-removing-unused-imports" -- Do not remove unused imports.
    .. " --skip-reflowing-long-strings" -- Do not reflow string literals that exceed the column limit.
    .. " --skip-javadoc-formatting" -- Do not reformat javadoc.
    .. " --lines $(($1+1)):$(($3+1))'" -- Line range(s) to format, like 5:10 (1-based; default is all).
    .. ") -"

local is_windows = vim.fn.has('win32') == 1
if is_windows then
  command = string.format('%s -', fs.executable(formatter))
end

return {
  formatCanRange = not is_windows,
  formatCommand = command,
  formatStdin = true,
  rootMarkers = {
      ".project",
      "classpath",
      "pom.xml",
  },
}
