# ⚡ My Neovim Config

A fast, modern and modular Neovim configuration powered by [lazy.nvim](https://github.com/folke/lazy.nvim).  
Includes LSP, autocompletion, formatting, file explorer, fuzzy finder, terminal integration and more — ready out of the box.

---

## 📦 Requirements

- **Neovim** `>= 0.10.0`
- **Git**
- [Nerd Font](https://www.nerdfonts.com/font-downloads) (e.g., FiraCode Nerd Font)
- **Optional external tools** (depending on your language usage):
  - `clang-format`, `stylua`, `isort`, `autopep8`, `pylint`, `prettier`, `eslint_d`, etc.

Ensure all tools are available in your `$PATH`.

---

## 🚀 Installation

1. **Clone the config**:

   ```bash
   git clone https://github.com/linheart/Nvim-config.git ~/.config/nvim
   ```

2. **Launch Neovim**:

   ```bash
   nvim
   ```

   On first launch:

   - Plugins will be installed automatically via `lazy.nvim`
   - Versions are pinned via `lazy-lock.json` for reproducibility

---

## 🧰 Included Features

| Feature         | Plugin / Description                                   |
|-----------------|---------------------------------------------------------|
| LSP             | `nvim-lspconfig` + `mason.nvim`                         |
| Completion      | `nvim-cmp` + `LuaSnip`                                  |
| Formatter       | `conform.nvim` (with tools like `prettier`, `autopep8`, etc.) |
| Treesitter      | `nvim-treesitter` with rainbow parentheses              |
| File Explorer   | `neo-tree.nvim`                                         |
| Fuzzy Finder    | `telescope.nvim`                                        |
| Terminal        | `toggleterm.nvim` (floating support)                    |  
| Status Line     | `lualine.nvim`                                          |
| Theme           | `onedark.nvim`                                          |

---

## 💻 Keybindings

| Shortcut        | Action                                |
|----------------|----------------------------------------|
| `<leader>e`     | Toggle file explorer (`neo-tree`)      |
| `<leader>ff`    | Find files (Telescope)                |
| `<leader>fg`    | Live grep (Telescope)                 |
| `<leader>f`     | Format file (Conform)                 |
| `<F7>`          | Toggle floating terminal              |
| `<C-h/j/k/l>`   | Window navigation                     |
| `<leader>z`     | Clear search highlights (`:noh`)      |

---

## 🔄 Plugin Management

Use the following Lazy commands inside Neovim:

```vim
:Lazy update      " update plugins
:Lazy sync        " sync lockfile
:Lazy clean       " remove unused plugins
```

---

## 🗂 Project Structure

```
.config/nvim
├── config/       → core settings (keymaps, options)
├── plugins/      → plugin configurations (modular)
├── init.lua      → entrypoint
├── lazy-lock.json → plugin version lock (recommended to commit)
```

---

## 💡 Tips

- `lazy-lock.json` is included to ensure consistent plugin versions.
- You can update it anytime with `:Lazy sync`.
