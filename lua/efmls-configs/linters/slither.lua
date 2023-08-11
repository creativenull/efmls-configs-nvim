-- Metadata
-- languages: solidity
-- url: https://github.com/crytic/slither

-- USAGE:
-- * `solc` needs to be manually configured, see:
-- https://github.com/foundry-rs/foundry/issues/5429
-- https://github.com/crytic/slither/issues/2054
-- * `remappings.txt` needs to generated, e.g. `forge remappings > remappings.txt`

local fs = require('efmls-configs.fs')

local linter = 'slither'
local bin = fs.executable(linter)
local args = '--json - "${INPUT}"'

-- Parsing JSON without `jq`, backtracking, or lazy matching is cursed,
-- but the following is fully POSIX compliant.
-- (only POSIX shell syntax and POSIX features of `sed`/`awk`/`printf`)
-- Explanation:
-- 1. Add ASCII delimiters to mark keywords: https://en.wikipedia.org/wiki/Delimiter#ASCII_delimited_text
-- 2. Search through delimiters to format subsections of text. Mark results with different delimiters.
-- 3. Pick out the marked results. It'll be the even-numbered fields,
--    example: junk|results|junk|results|junk.
-- 4. Turn the "lines" result (e.g. "1,2,3,4") into range (e.g. "1-4").
local command = string.format(
  [=[
%s %s --solc-remaps "$([ -f remappings.txt ] && tr '\n' ' ' < remappings.txt | xargs)" \
| sed "s/filename_absolute/$(printf '%%b' '\0036')filename_absolute/g" \
| sed "s/lines/$(printf '%%b' '\0036')lines/g" \
| sed "s/description/$(printf '%%b' '\0037')description/g" \
| sed "s/impact/$(printf '%%b' '\0036')impact/g" \
| sed "s/\"elements\"[^$(printf '%%b' '\0036')]*\"$(printf '%%b' '\0036')filename_absolute\": \"\([^\"]*\)\"[^$(printf '%%b' '\0036')]*\"$(printf '%%b' '\0036')lines\": \[\([^]]*\)\][^0-9]*starting_column\": \([0-9]*\), \"ending_column\": \([0-9]*\)[^$(printf '%%b' '\0037')]*$(printf '%%b' '\0037')description\": \"\([^\"]*\)[^$(printf '%%b' '\0036')]*\"$(printf '%%b' '\0036')impact\": \"\([^\"]*\)\"/$(printf '%%b' '\0035')\2| \3-\4 of \1 (\6): \5$(printf '%%b' '\0035')/g" \
| awk -F "$(printf '%%b' '\0035')" '{for (i=2; i<=NF; i+=2) print $i}' \
| awk -F "|" '{split($1, a, ", "); $1=a[1] "-" a[length(a)] ":"; print $0}'
]=],
  bin,
  args
)

return {
  lintCategoryMap = {
    I = 'N',
    O = 'N',
    H = 'E',
    M = 'W',
    L = 'I',
  },
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintSource = linter,
  -- Can only support linting on save, see:
  -- https://github.com/crytic/slither/issues/2057
  lintStdin = false,
  lintFormats = {
    '%l-%e:  %c-%k of %f (%tow): %m',
    '%l-%e:  %c-%k of %f (%tedium): %m',
    '%l-%e:  %c-%k of %f (%tigh): %m',
    '%l-%e:  %c-%k of %f (%tptimization): %m',
    '%l-%e:  %c-%k of %f (%tnformational): %m',
  },
  rootMarkers = {
    'hardhat.config.js',
    'hardhat.config.ts',
    'foundry.toml',
    'remappings.txt',
    'truffle.js',
    'truffle-config.js',
    'ape-config.yaml',
  },
}
