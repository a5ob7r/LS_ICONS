# LS_ICONS

[![CI](https://github.com/a5ob7r/LS_ICONS/actions/workflows/ci.yml/badge.svg)](https://github.com/a5ob7r/LS_ICONS/actions/workflows/ci.yml)

This is an experimental configuration for an environment variable `LS_ICONS`, which is for the `--icons` option of [haskellorls](https://github.com/a5ob7r/haskellorls).

## What's `LS_ICONS`

This is similar to `LS_COLORS`, which is a configuration for colorization filename outputs of GNU ls with `--color` option and lists pairs of matching filename patterns and corresponding ANSI escape sequence parameters. However, this is for a configuration of [haskellorls](https://github.com/a5ob7r/haskellorls) with `--icons` and lists pairs of matching filename patterns and corresponding icons instead of ANSI escape sequence parameters.

This is not supported by GNU ls and probably other similar projects. Also this project uses `dircolors`, but it is probably an unexpected usage of `dircolors`.

## Requirements

- [Nerd Fonts](https://www.nerdfonts.com/) v3.0.0 or later

## Usage

For sh, bash, zsh and so on,

```sh
$ source lsicons.sh
```

If csh user,

```csh
$ source lsicons.csh
```

## Development

1. Edit the `LS_ICONS` file.

2. Generate compiled configurations.

```sh
$ make
```

## Note

This project is inspired by [trapd00r/LS_COLORS](https://github.com/trapd00r/LS_COLORS). Thank you!
