return {
  prefix = 'golangci-lint',
  lintCommand = 'golangci-lint run --color never --out-format tab ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c %m' },
  rootMarkers = {},
}
