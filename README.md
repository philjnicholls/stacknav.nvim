# stacknav.vim

Easily navigate Python stacktrace

##### Table of content

- [Install](#install)
- [Features](#features)
- [License](#license)

## Install

**Requirements:**

- Neovim v0.7+

#### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
require('lazy').setup {
  {'philjnicholls/stacknav.nvim'},
}
```

#### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'philjnicholls/stacknav.nvim'
```

#### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'philjnicholls/stacknav.nvim'
```

### Options

filepaths_maps = {{FROM, TO}, {FROM, TO}}
keymaps = KEYMAPPING

## Features

* File path remapping with regular expressions to map paths between environments

## License

[GNU GENERAL PUBLIC LICENSE](https://github.com/philjnicholls/stacknav.vim/blob/master/LICENSE.md)
