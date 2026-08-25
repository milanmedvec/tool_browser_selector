# tool_browser_selector

Desktop URL chooser that opens links in selected Chromium session launchers.

## Commands

- `browser-selector` - dialog-based browser/profile selector

## Dependencies

- bash
- dialog
- alacritty
- i3-msg
- tool_chrome_sessions commands: cmi, cid, cwe, can

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
