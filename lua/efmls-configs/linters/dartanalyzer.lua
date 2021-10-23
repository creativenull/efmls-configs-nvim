return {
  prefix = 'dartanalyzer',
  lintCommand = './dart-sdk/bin/dartanalyzer --format machine ${INPUT}',
  lintStdin = false,
  lintFormats = {
    '%tRROR|%.%#|%.%#|%f|%l|%c|%.%#|%m',
    '%tARNING|%.%#|%.%#|%f|%l|%c|%.%#|%m',
    '%tNFO|%.%#|%.%#|%f|%l|%c|%.%#|%m',
  },
  rootMarkers = {},
}
