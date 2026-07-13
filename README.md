# Random ASCII Art in fastfetch

This repo contains my fastfetch as well as my shell config files.
On startup it selects a random ASCII art from `ascii-art/generated/` directory.

> [!danger] IMPORTANT
> You need to configure the `ascii-art/generated/` location in `run.sh`/`run.fish`/`config.fish`!

## Install

Place or link `config.jsonc` to `~/.config/fastfetch/`

**Bash**: Append path of `run.sh`-file (e.g. `~/Code/terminal/run.sh`) to `~/.bashrc`
**Zsh**: Append path of `run.sh`-file (e.g. `~/Code/terminal/run.sh`) to `~/.zshrc`
**Fish**: Place or link `config.fish` to `~/.config/fish/` (or you can use `run.fish`)

_If you only want a greeting in certain terminals you can set it up like so: `[[ "$TERM_PROGRAM" == "ghostty" ]] && ~/Code/terminal/run.sh`. The greeting will only appear in Ghostty in this case._

> [!info]
> The advantage of a link is that it automatically updates the config on `git pull`.

## Requirements

- [ascii-image-converter](https://github.com/TheZoraiz/ascii-image-converter)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)

## Screenshots

![macOS](./screenshots/macOS.png)
![CachyOS](./screenshots/CachyOS.png)
