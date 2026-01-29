# yazi-start-dir

Jump back to the directory where yazi was started.

## Requirements

- [yazi](https://github.com/sxyazi/yazi) v0.4.0+

## Installation

### With `ya pack`
```bash
ya pack -a moto-taka/yazi-start-dir
```

### Manual
```bash
git clone https://github.com/moto-taka/yazi-start-dir.git ~/.config/yazi/plugins/yazi-start-dir.yazi
```

## Setup

### 1. Add to keymap

Add to `~/.config/yazi/keymap.toml`:
```toml
[[mgr.prepend_keymap]]
on = ["g", "s"]
run = "plugin yazi-start-dir"
desc = "Go to start directory"
```

### 2. Add shell function

This plugin requires the `YAZI_START_DIR` environment variable to be set when launching yazi.

**zsh / bash** - Add to `~/.zshrc` or `~/.bashrc`:
```bash
function yazi() {
  YAZI_START_DIR="$PWD" command yazi "$@"
}
```

**fish** - Add to `~/.config/fish/config.fish`:
```fish
function yazi
  set -x YAZI_START_DIR $PWD
  command yazi $argv
end
```

Then reload your shell:
```bash
source ~/.zshrc  # or restart your terminal
```

## Usage

1. Start yazi from any directory
2. Navigate anywhere
3. Press `g` then `s` to jump back to the start directory

## License

MIT
