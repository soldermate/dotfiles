# dotfiles

Personal configuration files managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Structure

Each directory represents a package that can be symlinked to your home directory:

```
dotfiles/
├── alacritty/          # Terminal emulator config
│   └── .config/
│       └── alacritty/
│           └── alacritty.toml
└── zsh/                # Zsh shell configuration
    └── .zshrc
```

## Installation

1. Install GNU Stow:
   ```bash
   # Arch Linux
   sudo pacman -S stow
   
   # Ubuntu/Debian
   sudo apt install stow
   
   # macOS
   brew install stow
   ```

2. Clone this repository:
   ```bash
   git clone <repository-url> ~/.dotfiles
   cd ~/.dotfiles
   ```

3. Use stow to symlink configurations:
   ```bash
   # Install all packages
   stow */
   
   # Or install specific packages
   stow zsh
   stow alacritty
   ```

## Usage

- **Add new config**: Create a new directory and mirror the structure from your home directory
- **Remove config**: `stow -D <package-name>`
- **Reinstall config**: `stow -R <package-name>`