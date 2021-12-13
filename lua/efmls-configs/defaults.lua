-- Defaults as defined in: supported-linters-and-formatters.md
return {
  ['css'] = {
    linter = require('efmls-configs.linters.stylelint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['go'] = {
    linter = require('efmls-configs.linters.golangci_lint'),
  },
  ['html'] = {
    linter = require('efmls-configs.linters.stylelint'),
  },
  ['javascript'] = {
    linter = require('efmls-configs.linters.eslint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['javascriptreact'] = {
    linter = require('efmls-configs.linters.eslint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['less'] = {
    linter = require('efmls-configs.linters.stylelint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['lua'] = {
    linter = require('efmls-configs.linters.luacheck'),
    formatter = require('efmls-configs.formatters.stylua'),
  },
  ['php'] = {
    linter = require('efmls-configs.linters.phpcs'),
    formatter = require('efmls-configs.formatters.phpcbf'),
  },
  ['python'] = {
    linter = require('efmls-configs.linters.flake8'),
    formatter = require('efmls-configs.formatters.autopep8'),
  },
  ['ruby'] = {
    linter = require('efmls-configs.linters.reek'),
  },
  ['sass'] = {
    linter = require('efmls-configs.linters.stylelint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['scss'] = {
    linter = require('efmls-configs.linters.stylelint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['typescript'] = {
    linter = require('efmls-configs.linters.eslint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['typescriptreact'] = {
    linter = require('efmls-configs.linters.eslint'),
    formatter = require('efmls-configs.formatters.prettier'),
  },
  ['vim'] = {
    linter = require('efmls-configs.linters.vint'),
  },
}
