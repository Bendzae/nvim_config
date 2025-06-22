# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Architecture Overview

This is an AstroNvim v4+ configuration built on top of the lazy.nvim plugin manager. The configuration follows AstroNvim's modular structure:

- `init.lua` - Bootstrap file that loads lazy.nvim and initializes the configuration
- `lua/lazy_setup.lua` - Main lazy.nvim setup with AstroNvim core and imports
- `lua/community.lua` - AstroCommunity plugin imports for language packs and utilities
- `lua/plugins/` - Custom plugin configurations and overrides
- `lua/polish.lua` - Post-setup configuration (currently disabled)

## Key Configuration Files

### Core Configuration
- `lua/plugins/astrocore.lua` - Core AstroNvim settings, keymaps, vim options, and features
- `lua/plugins/astrolsp.lua` - Language Server Protocol configuration and formatting settings
- `lua/plugins/astroui.lua` - UI customizations and theming
- `lua/plugins/user.lua` - User-specific plugins and custom configurations

### Language Support
The configuration includes comprehensive language support through AstroCommunity packs:
- Java (with custom JDK runtime configuration)
- Kotlin, Rust, TypeScript, HTML/CSS, TailwindCSS
- Docker, Markdown, Bash, Lua
- Astro framework support

### Key Features Enabled
- Codeium AI completion
- Harpoon for file navigation
- Flash.nvim for enhanced motion
- Vim Visual Multi for multiple cursors
- Noice.nvim for enhanced UI
- Catppuccin and Tokyo Night colorschemes
- Just build system integration

## Development Commands

### Linting
```bash
selene lua/
```
Uses selene for Lua linting with configuration in `selene.toml`.

### Plugin Management
All plugins are managed through lazy.nvim. Plugin specifications are defined in:
- `lua/community.lua` for AstroCommunity imports
- `lua/plugins/*.lua` for custom plugins and overrides

### Configuration Structure
- Plugin configurations use LazySpec format with type annotations
- Settings are organized by plugin with clear separation of concerns
- Custom keymaps are defined in astrocore.lua mappings table
- LSP settings are centralized in astrolsp.lua

## Important Notes

- The configuration disables format-on-save by default
- Custom quickfix navigation keymaps: `]q` and `[q`
- Terminal escape key remapped to `<Esc>`
- Reference finding uses Telescope instead of default LSP handler
- Polish.lua is currently disabled (line 1 early return)
- Configuration uses relative line numbers and disables line wrapping