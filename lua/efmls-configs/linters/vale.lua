return {
  prefix = 'vale',
  lintCommand = 'vale --output=line ${INPUT}',
  lintStdin = false,
  lintFormats = { '%f:%l:%c:%m' },
  rootMarkers = { '.vale.ini' },
}
