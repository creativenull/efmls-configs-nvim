return {
  prefix = 'ansible-lint',
  lintCommand = 'ansible-lint --nocolor -',
  lintStdin = true,
  lintFormats = { 'stdin:%l:%c [%tRROR]: %m', 'stdin:%l:%c [%tARNING]: %m' },
  rootMarkers = { '.ansible-lint' },
}
