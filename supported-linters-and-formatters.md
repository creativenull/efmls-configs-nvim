# Supported Linters & Formatters

Please create an Pull Request if you see any mismatched documentation or typos.

## Default Configurations

Here is a list of languages that are automatically set and configured when `default_config` is enabled. For information
on how to set `default_config` check the docs:
[`:help efmls-configs-defaults`](https://github.com/creativenull/efmls-configs-nvim#default-configuration).

| **Filetype** | **Default Linter** | **Default Formatter** |
|--------------|--------------------|-----------------------|
| CSS/SASS/SCSS/LESS | [`stylelint`](#csssassscssless) | [`prettier`](#csssassscssless) |
| Go | [`golangci_lint`](#go) | |
| HTML | [`stylelint`](#html) | [`prettier`](#html) |
| JavaScript/JSX | [`eslint`](#javascript) | [`prettier`](#javascript) |
| Lua | [`luacheck`](#lua) | [`stylua`](#lua) |
| PHP | [`phpcs`](#php) | [`phpcbf`](#php) |
| Python | [`flake8`](#python) | [`autopep8`](#python) |
| Ruby | [`reek`](#ruby) | |
| TypeScript/TSX | [`eslint`](#typescript) | [`prettier`](#typescript) |
| Vim | [`vint`](#vim) | |

## Linter & Formatter Configurations

(Coming Soon)
