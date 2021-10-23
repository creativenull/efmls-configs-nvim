return {
  prefix = 'flawfinder',
  lintCommand = 'flawfinder --singleline --dataonly ${INPUT}',
  lintStdin = false,
  lintFormats = { '%.%#:%l:%c:%.%#[%n] %m' },
  rootMarkers = {},
}
