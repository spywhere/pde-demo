# PDE Demo

This is a basic setup used during a demo for
`PDE: A different take on editing code` session run on 22 November 2023.

This setup is served as an entry point for VSCode user to get to know about
Neovim and how to configure one to their liking.

## How to use this demo

An entry [init.lua](/init.lua) is missing some basic configurations, simply add

```lua
require('editor')
```

to import the editor configurations.

Then check out Plugins section below for available self-contained features.

## Plugins

To use a specific feature, simply copy a file from [/plugins](/plugins) into [/lua/plugins](/lua/plugins).

- [bufferline.lua](/plugins/bufferline.lua): Tabbar-like bufferline
- [colorscheme.lua](/plugins/colorscheme.lua): VSCode-like colorscheme
- [completion.lua](/plugins/completion.lua): Auto-completion engine
- [copilot.lua](/plugins/copilot.lua): GitHub Copilot
- [dressing.lua](/plugins/dressing.lua): A nicer UI for basic inputs
- [explorer.lua](/plugins/explorer.lua): A file tree explorer
- [finder.lua](/plugins/finder.lua): A generic fuzzy finder
- [git.lua](/plugins/git.lua): LazyGit integration
- [indent.lua](/plugins/indent.lua): Indentation detection and guide lines
- [lsp.lua](/plugins/lsp.lua): Language server integrations with automatic installation
- [minimap.lua](/plugins/minimap.lua): Code Minimap
- [startup.lua](/plugins/startup.lua): A startup screen
- [statusline.lua](/plugins/statusline.lua): A nicer statusline
- [treesitter.lua](/plugins/treesitter.lua): A better syntax awareness
- [winbar.lua](/plugins/winbar.lua): Breadcrumb-like winbar
