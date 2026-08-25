# tool_browser_selector

Desktop URL chooser that opens links in selected Chromium session launchers.

## Commands

- `browser-selector` - dialog-based browser/profile selector

## Dependencies

Required commands:
- `bash`
- `dialog`
- `alacritty`
- `i3-msg`
- `cmi`
- `cid`
- `cwe`
- `can`

Notes:
- `cmi`, `cid`, `cwe`, and `can` are provided by `tool_chrome_sessions`.

Check required commands in your shell:

```bash
need() {
    command -v "$1" >/dev/null || echo "missing: $1"
}

for cmd in bash dialog alacritty i3-msg cmi cid cwe can; do
    need "$cmd"
done
```

## Install

```bash
./install.sh
```

Install to a custom prefix:

```bash
PREFIX="$HOME/.local" ./install.sh
```

## Usage

```bash
browser-selector https://example.com
./install.sh
```

## Configuration

- Installs `browser.desktop` into `$XDG_DATA_HOME/applications` for http/https handling.

## Notes

These scripts were extracted from a personal Arch Linux + i3 workspace. Review dependencies and paths before using them on another machine.
