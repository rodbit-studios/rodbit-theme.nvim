# Rodbit Theme

A custom Neovim theme created by the Rodbit team.

## Features

- Vibrant color palette with a focus on readability and contrast
- Comprehensive syntax highlighting for various programming languages
- Carefully designed UI elements like status bar, floating windows, and more
- Supports Neovim's built-in LSP and Git integration

## Installation

1. Add the plugin to your Neovim configuration (e.g., in your `lua/plugins.lua` file):

```lua
return {
  {
    "rodbit-studios/rodbit-theme.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("rodbit-theme").setup()
      vim.cmd.colorscheme("rodbit-theme")
    end
  }
}
```

2. Restart Neovim, and the theme should be applied automatically.

## Configuration

The theme does not have any built-in configuration options. The colors and highlight groups are defined directly in the plugin code.

## Contributing

If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request on the [GitHub repository](https://github.com/rodbit-studios/rodbit-theme.nvim).

## License

This project is licensed under the [MIT License](LICENSE).
