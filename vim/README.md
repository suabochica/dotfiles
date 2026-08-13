# Vim

Vim is a powerful, modal terminal-based text editor, often used for coding, that enables fast navigation and editing without a mouse. It is an improved version of the Unix vi editor, featuring syntax highlighting, multi-level undo, and plugin support. It is pre-installed on most Linux/Unix systems.

I store a basic Vim setup for text file edition:

- `.vimrc`: main file to store configurations.
- `.vimrc.plug`: use vimplug as as a minimalist plugin manager for Vim.

## Neovim

Neovim is preferred over Vim for its modern architecture, featuring native LSP (Language Server Protocol) support for IDE-like code intelligence, faster asynchronous plugin execution using Lua, and Treesitter for superior syntax highlighting. It boasts "saner" default settings, an active community-driven development model, and a booming ecosystem of modern plugins

First, install the latest version of `nvim` running the next command on Ubuntu:

```sh
sudo snap install nvim --classic
```

Then, I suggest use [LazyVim](https://www.lazyvim.org/). LazyVim is a Neovim setup powered by 💤 lazy.nvim to make it easy to customize and extend your config.

### ✨ Features

- 🔥 Transform your Neovim into a full-fledged IDE
- 💤 Easily customize and extend your config with lazy.nvim
- 🚀 Blazingly fast
- 🧹 Sane default settings for options, autocmds, and keymaps
- 📦 Comes with a wealth of plugins pre-configured and ready to use

### 🔌 Plugins

List of plugins I use for LazyVim:

- [nvim-tmux-navigation](https://github.com/alexghergh/nvim-tmux-navigation)
- [nvim-orgmode/orgmode](https://github.com/nvim-orgmode/orgmode)

To add plugins, navigate to `~/.config/nvim/lua/plugins` and add it. For example, I use the `alexghergh/nvim-tmux-navigation` plugin to navigate between neovim and tmux with `Ctrl + VimNavigationKeys` and it requires the next set up create the file `nvim-tmux-navigation.lua` with the next content:

```lua
return {
  "alexghergh/nvim-tmux-navigation",
  event = "VeryLazy",
  config = function()
    local nvim_tmux_nav = require("nvim-tmux-navigation")
    nvim_tmux_nav.setup({
      disable_when_zoomed = true,
      -- defaults to false
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      },
    })
  end,
}
```

Set up for 'nvim-orgmode/orgmode'.

```lua
return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/orgfiles/**/*',
      org_default_notes_file = '~/orgfiles/refile.org',
    })

    -- Experimental LSP support
    vim.lsp.enable('org')
  end,
}
```
